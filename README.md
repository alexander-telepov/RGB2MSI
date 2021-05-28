# Translation of RGB to multispectral images 

![demo](https://user-images.githubusercontent.com/73617371/119876703-98119280-bf41-11eb-92ff-cf6d5882c3a2.png)

Food quality is a crucial aspect of human health and food quality control helps to avoid heath diseases affected by food poisoning. Optical and hyperspectral imaging are widely used in postharvest biology and technology for fruit quality control while common digital images are useless for decay detection on early stages. However optical and hyperspectral imaging are more costly and time consuming than default digital imaging. This motivates us to investigate the ability of digital to multispectral images translation.

Goal of this project is to investigate ability to translate digital images to multispectral.
We considered several approaches : [Pix2Pix](https://arxiv.org/pdf/1611.07004.pdf) | [CycleGan](https://arxiv.org/pdf/1703.10593.pdf) | [Pix2PixHD](https://arxiv.org/pdf/1711.11585.pdf) | Pointwise(CNN with kern_size=1).

[Report](Final_Project_DL.pdf)

## Prerequisites
- Linux or macOS
- Python 3
- CPU or NVIDIA GPU + CUDA CuDNN

### Installation

- Clone this repo:
```bash
git clone https://github.com/alexander-telepov/RGB2MSI.git
cd MSI2RGB
```

- Install [PyTorch](http://pytorch.org) and 0.4+ and other dependencies (e.g., torchvision, [visdom](https://github.com/facebookresearch/visdom) and [dominate](https://github.com/Knio/dominate)).
  - For pip users, please type the command `pip install -r requirements.txt`.
  - For Conda users, you can create a new Conda environment using `conda env create -f environment.yml`.

### Example of train/test for CycleGAN

- To view training results and loss plots, run `python -m visdom.server` and click the URL http://localhost:8097.
- Train a model:
```bash
bash ./scripts/train_cyclegan_apples.sh
```
To see more intermediate results, check out `./checkpoints/apples_cyclegan/web/index.html`.
- Test the model:
```bash
bash ./scripts/test_cyclegan_apples.sh
```
- The test results will be saved to a html file here: `./results/apples_cyclegan/latest_test/index.html`.

## Citations
Code based on [repository](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix)

```
@inproceedings{CycleGAN2017,
  title={Unpaired Image-to-Image Translation using Cycle-Consistent Adversarial Networkss},
  author={Zhu, Jun-Yan and Park, Taesung and Isola, Phillip and Efros, Alexei A},
  booktitle={Computer Vision (ICCV), 2017 IEEE International Conference on},
  year={2017}
}


@inproceedings{isola2017image,
  title={Image-to-Image Translation with Conditional Adversarial Networks},
  author={Isola, Phillip and Zhu, Jun-Yan and Zhou, Tinghui and Efros, Alexei A},
  booktitle={Computer Vision and Pattern Recognition (CVPR), 2017 IEEE Conference on},
  year={2017}
}


@inproceedings{wang2018pix2pixHD,
  title={High-Resolution Image Synthesis and Semantic Manipulation with Conditional GANs},
  author={Ting-Chun Wang and Ming-Yu Liu and Jun-Yan Zhu and Andrew Tao and Jan Kautz and Bryan Catanzaro},  
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  year={2018}
}
```
