
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int cmsUInt32Number ;
typedef int TIFF ;


 int BYTES_SH (int) ;
 int CHANNELS_SH (int) ;
 int COLORSPACE_SH (int) ;
 int EXTRA_SH (int) ;
 int FALSE ;
 int FLAVOR_SH (int) ;
 int FLOAT_SH (int) ;
 int FatalError (char*,...) ;
 int PLANAR_SH (int) ;
 int PT_GRAY ;
 int PT_Lab ;
 int PT_LabV2 ;
 int PT_RGB ;
 int PT_YCbCr ;
 int PT_YUV ;
 int PixelTypeFromChanCount (int) ;
 int SGILOGDATAFMT_16BIT ;
 scalar_t__ StoreAsAlpha ;
 int TIFFGetField (int *,int ,int*) ;
 int TIFFGetFieldDefaulted (int *,int ,int*,...) ;
 int TIFFSetField (int *,int ,int ) ;
 int TIFFTAG_BITSPERSAMPLE ;
 int TIFFTAG_COMPRESSION ;
 int TIFFTAG_EXTRASAMPLES ;
 int TIFFTAG_PHOTOMETRIC ;
 int TIFFTAG_PLANARCONFIG ;
 int TIFFTAG_SAMPLESPERPIXEL ;
 int TIFFTAG_SGILOGDATAFMT ;
 int TIFFTAG_YCBCRSUBSAMPLING ;
 int TRUE ;

__attribute__((used)) static
cmsUInt32Number GetInputPixelType(TIFF *Bank)
{
    uint16 Photometric, bps, spp, extra, PlanarConfig, *info;
    uint16 Compression, reverse = 0;
    int ColorChannels, IsPlanar = 0, pt = 0, IsFlt;
    int labTiffSpecial = FALSE;

    TIFFGetField(Bank, TIFFTAG_PHOTOMETRIC, &Photometric);
    TIFFGetFieldDefaulted(Bank, TIFFTAG_BITSPERSAMPLE, &bps);

    if (bps == 1)
        FatalError("Sorry, bilevel TIFFs has nothing to do with ICC profiles");

    if (bps != 8 && bps != 16 && bps != 32)
        FatalError("Sorry, 8, 16 or 32 bits per sample only");

    TIFFGetFieldDefaulted(Bank, TIFFTAG_SAMPLESPERPIXEL, &spp);
    TIFFGetFieldDefaulted(Bank, TIFFTAG_PLANARCONFIG, &PlanarConfig);

    switch (PlanarConfig) {

     case 129: IsPlanar = 0; break;
     case 128: IsPlanar = 1; break;
     default:

         FatalError("Unsupported planar configuration (=%d) ", (int) PlanarConfig);
    }




    if (spp == 1) IsPlanar = 0;



    TIFFGetFieldDefaulted(Bank, TIFFTAG_EXTRASAMPLES, &extra, &info);



    if (StoreAsAlpha) {

        ColorChannels = spp;
        extra = 0;
    }
    else
        ColorChannels = spp - extra;

    switch (Photometric) {

    case 134:

        reverse = 1;



    case 135:
        pt = PT_GRAY;
        break;

    case 132:
        pt = PT_RGB;
        break;


     case 133:
         FatalError("Sorry, palette images not supported");
         break;

     case 131:

         pt = PixelTypeFromChanCount(ColorChannels);
         break;

     case 130:
         TIFFGetField(Bank, TIFFTAG_COMPRESSION, &Compression);
         {
             uint16 subx, suby;

             pt = PT_YCbCr;
             TIFFGetFieldDefaulted(Bank, TIFFTAG_YCBCRSUBSAMPLING, &subx, &suby);
             if (subx != 1 || suby != 1)
                 FatalError("Sorry, subsampled images not supported");

         }
         break;

     case 137:
         pt = PT_LabV2;
         break;

     case 138:
         pt = PT_Lab;
         labTiffSpecial = TRUE;
         break;


     case 136:

         TIFFSetField(Bank, TIFFTAG_SGILOGDATAFMT, SGILOGDATAFMT_16BIT);
         pt = PT_YUV;
         bps = 16;
         break;

     default:
         FatalError("Unsupported TIFF color space (Photometric %d)", Photometric);
    }



    bps >>= 3;
    IsFlt = (bps == 0) || (bps == 4);

    return (FLOAT_SH(IsFlt)|COLORSPACE_SH(pt)|PLANAR_SH(IsPlanar)|EXTRA_SH(extra)|CHANNELS_SH(ColorChannels)|BYTES_SH(bps)|FLAVOR_SH(reverse) | (labTiffSpecial << 23) );
}
