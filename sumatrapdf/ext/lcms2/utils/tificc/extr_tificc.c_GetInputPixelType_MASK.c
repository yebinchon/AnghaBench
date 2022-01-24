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
 int FALSE ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
#define  PHOTOMETRIC_CIELAB 138 
#define  PHOTOMETRIC_ICCLAB 137 
#define  PHOTOMETRIC_LOGLUV 136 
#define  PHOTOMETRIC_MINISBLACK 135 
#define  PHOTOMETRIC_MINISWHITE 134 
#define  PHOTOMETRIC_PALETTE 133 
#define  PHOTOMETRIC_RGB 132 
#define  PHOTOMETRIC_SEPARATED 131 
#define  PHOTOMETRIC_YCBCR 130 
#define  PLANARCONFIG_CONTIG 129 
#define  PLANARCONFIG_SEPARATE 128 
 int FUNC7 (int) ; 
 int PT_GRAY ; 
 int PT_Lab ; 
 int PT_LabV2 ; 
 int PT_RGB ; 
 int PT_YCbCr ; 
 int PT_YUV ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  SGILOGDATAFMT_16BIT ; 
 scalar_t__ StoreAsAlpha ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIFFTAG_BITSPERSAMPLE ; 
 int /*<<< orphan*/  TIFFTAG_COMPRESSION ; 
 int /*<<< orphan*/  TIFFTAG_EXTRASAMPLES ; 
 int /*<<< orphan*/  TIFFTAG_PHOTOMETRIC ; 
 int /*<<< orphan*/  TIFFTAG_PLANARCONFIG ; 
 int /*<<< orphan*/  TIFFTAG_SAMPLESPERPIXEL ; 
 int /*<<< orphan*/  TIFFTAG_SGILOGDATAFMT ; 
 int /*<<< orphan*/  TIFFTAG_YCBCRSUBSAMPLING ; 
 int TRUE ; 

__attribute__((used)) static
cmsUInt32Number FUNC12(TIFF *Bank)
{
    uint16 Photometric, bps, spp, extra, PlanarConfig, *info;
    uint16 Compression, reverse = 0;
    int ColorChannels, IsPlanar = 0, pt = 0, IsFlt;
    int labTiffSpecial = FALSE;

    FUNC9(Bank,           TIFFTAG_PHOTOMETRIC,   &Photometric);
    FUNC10(Bank,  TIFFTAG_BITSPERSAMPLE, &bps);

    if (bps == 1)
        FUNC6("Sorry, bilevel TIFFs has nothing to do with ICC profiles");

    if (bps != 8 && bps != 16 && bps != 32)
        FUNC6("Sorry, 8, 16 or 32 bits per sample only");

    FUNC10(Bank, TIFFTAG_SAMPLESPERPIXEL, &spp);
    FUNC10(Bank, TIFFTAG_PLANARCONFIG, &PlanarConfig);

    switch (PlanarConfig) {

     case PLANARCONFIG_CONTIG: IsPlanar = 0; break;
     case PLANARCONFIG_SEPARATE: IsPlanar = 1; break;
     default:

         FUNC6("Unsupported planar configuration (=%d) ", (int) PlanarConfig);
    }

    // If Samples per pixel == 1, PlanarConfiguration is irrelevant and need
    // not to be included.

    if (spp == 1) IsPlanar = 0;

    // Any alpha?

    FUNC10(Bank, TIFFTAG_EXTRASAMPLES, &extra, &info);

    // Read alpha channels as colorant

    if (StoreAsAlpha) {

        ColorChannels = spp;
        extra = 0;
    }
    else
        ColorChannels = spp - extra;

    switch (Photometric) {

    case PHOTOMETRIC_MINISWHITE:

        reverse = 1;

        // ... fall through ...

    case PHOTOMETRIC_MINISBLACK:
        pt = PT_GRAY;
        break;

    case PHOTOMETRIC_RGB:
        pt = PT_RGB;
        break;


     case PHOTOMETRIC_PALETTE:
         FUNC6("Sorry, palette images not supported");
         break;

     case PHOTOMETRIC_SEPARATED:

         pt = FUNC8(ColorChannels);
         break;

     case PHOTOMETRIC_YCBCR:
         FUNC9(Bank, TIFFTAG_COMPRESSION, &Compression);
         {
             uint16 subx, suby;

             pt = PT_YCbCr;
             FUNC10(Bank, TIFFTAG_YCBCRSUBSAMPLING, &subx, &suby);
             if (subx != 1 || suby != 1)
                 FUNC6("Sorry, subsampled images not supported");

         }
         break;

     case PHOTOMETRIC_ICCLAB:
         pt = PT_LabV2;
         break;

     case PHOTOMETRIC_CIELAB:
         pt = PT_Lab;
         labTiffSpecial = TRUE;
         break;


     case PHOTOMETRIC_LOGLUV:      // CIE Log2(L) (u',v')

         FUNC11(Bank, TIFFTAG_SGILOGDATAFMT, SGILOGDATAFMT_16BIT);
         pt = PT_YUV;             // *ICCSpace = icSigLuvData;
         bps = 16;                // 16 bits forced by LibTiff
         break;

     default:
         FUNC6("Unsupported TIFF color space (Photometric %d)", Photometric);
    }

    // Convert bits per sample to bytes per sample

    bps >>= 3;
    IsFlt = (bps == 0) || (bps == 4);

    return (FUNC5(IsFlt)|FUNC2(pt)|FUNC7(IsPlanar)|FUNC3(extra)|FUNC1(ColorChannels)|FUNC0(bps)|FUNC4(reverse) | (labTiffSpecial << 23) );
}