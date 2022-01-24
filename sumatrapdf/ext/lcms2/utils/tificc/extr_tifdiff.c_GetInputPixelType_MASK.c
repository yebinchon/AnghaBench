#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16 ;
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
#define  PHOTOMETRIC_CIELAB 137 
#define  PHOTOMETRIC_LOGLUV 136 
#define  PHOTOMETRIC_MINISBLACK 135 
#define  PHOTOMETRIC_MINISWHITE 134 
#define  PHOTOMETRIC_PALETTE 133 
#define  PHOTOMETRIC_RGB 132 
#define  PHOTOMETRIC_SEPARATED 131 
#define  PHOTOMETRIC_YCBCR 130 
#define  PLANARCONFIG_CONTIG 129 
#define  PLANARCONFIG_SEPARATE 128 
 int FUNC6 (int) ; 
 int PT_GRAY ; 
 int PT_Lab ; 
 int PT_RGB ; 
 int PT_YCbCr ; 
 int PT_YUV ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  SGILOGDATAFMT_16BIT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIFFTAG_BITSPERSAMPLE ; 
 int /*<<< orphan*/  TIFFTAG_COMPRESSION ; 
 int /*<<< orphan*/  TIFFTAG_EXTRASAMPLES ; 
 int /*<<< orphan*/  TIFFTAG_PHOTOMETRIC ; 
 int /*<<< orphan*/  TIFFTAG_PLANARCONFIG ; 
 int /*<<< orphan*/  TIFFTAG_SAMPLESPERPIXEL ; 
 int /*<<< orphan*/  TIFFTAG_SGILOGDATAFMT ; 
 int /*<<< orphan*/  TIFFTAG_YCBCRSUBSAMPLING ; 

__attribute__((used)) static
cmsUInt32Number FUNC11(TIFF *Bank)
{
     uint16 Photometric, bps, spp, extra, PlanarConfig, *info;
     uint16 Compression, reverse = 0;
     int ColorChannels, IsPlanar = 0, pt = 0;

     FUNC8(Bank,           TIFFTAG_PHOTOMETRIC,   &Photometric);
     FUNC9(Bank,  TIFFTAG_BITSPERSAMPLE, &bps);

     if (bps == 1)
       FUNC5("Sorry, bilevel TIFFs has nothig to do with ICC profiles");

     if (bps != 8 && bps != 16)
              FUNC5("Sorry, 8 or 16 bits per sample only");

     FUNC9(Bank, TIFFTAG_SAMPLESPERPIXEL, &spp);
     FUNC9(Bank, TIFFTAG_PLANARCONFIG, &PlanarConfig);

     switch (PlanarConfig)
     {
     case PLANARCONFIG_CONTIG: IsPlanar = 0; break;
     case PLANARCONFIG_SEPARATE: FUNC5("Planar TIFF are not supported");
     default:

     FUNC5("Unsupported planar configuration (=%d) ", (int) PlanarConfig);
     }

     // If Samples per pixel == 1, PlanarConfiguration is irrelevant and need
     // not to be included.

     if (spp == 1) IsPlanar = 0;


     // Any alpha?

     FUNC9(Bank, TIFFTAG_EXTRASAMPLES, &extra, &info);


     ColorChannels = spp - extra;

     switch (Photometric) {

     case PHOTOMETRIC_MINISWHITE:

            reverse = 1;

     case PHOTOMETRIC_MINISBLACK:

            pt = PT_GRAY;
            break;

     case PHOTOMETRIC_RGB:

            pt = PT_RGB;
            break;


     case PHOTOMETRIC_PALETTE:

            FUNC5("Sorry, palette images not supported (at least on this version)");

     case PHOTOMETRIC_SEPARATED:
           pt = FUNC7(ColorChannels);
           break;

     case PHOTOMETRIC_YCBCR:
           FUNC8(Bank, TIFFTAG_COMPRESSION, &Compression);
           {
                  uint16 subx, suby;

                  pt = PT_YCbCr;
                  FUNC9(Bank, TIFFTAG_YCBCRSUBSAMPLING, &subx, &suby);
                  if (subx != 1 || suby != 1)
                         FUNC5("Sorry, subsampled images not supported");

           }
           break;

     case 9:
     case PHOTOMETRIC_CIELAB:
           pt = PT_Lab;
           break;


     case PHOTOMETRIC_LOGLUV:      /* CIE Log2(L) (u',v') */

           FUNC10(Bank, TIFFTAG_SGILOGDATAFMT, SGILOGDATAFMT_16BIT);
           pt = PT_YUV;             // *ICCSpace = icSigLuvData;
           bps = 16;               // 16 bits forced by LibTiff
           break;

     default:
           FUNC5("Unsupported TIFF color space (Photometric %d)", Photometric);
     }

     // Convert bits per sample to bytes per sample

     bps >>= 3;

     return (FUNC2(pt)|FUNC6(IsPlanar)|FUNC3(extra)|FUNC1(ColorChannels)|FUNC0(bps)|FUNC4(reverse));
}