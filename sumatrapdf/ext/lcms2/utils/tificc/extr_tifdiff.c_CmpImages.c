
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef scalar_t__ cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef scalar_t__ cmsHTRANSFORM ;
typedef scalar_t__ cmsHPROFILE ;
typedef int cmsCIELab ;
typedef int TIFF ;


 int AddOnePixel (int *,double) ;
 int COMPRESSION_NONE ;
 int Channels ;
 int * ColorantStat ;
 int ColorimetricStat ;
 int EuclideanStat ;
 int FatalError (char*,int) ;
 int OpenEmbedded (int *,scalar_t__*,scalar_t__*) ;




 int PLANARCONFIG_CONTIG ;
 int PixelSize (int ) ;
 int TIFFGetField (int *,int ,int*) ;
 scalar_t__ TIFFReadScanline (int *,scalar_t__*,int,int ) ;
 int TIFFScanlineSize (int *) ;
 int TIFFSetField (int *,int ,int) ;
 int TIFFTAG_BITSPERSAMPLE ;
 int TIFFTAG_COMPRESSION ;
 int TIFFTAG_IMAGELENGTH ;
 int TIFFTAG_IMAGEWIDTH ;
 int TIFFTAG_PHOTOMETRIC ;
 int TIFFTAG_PLANARCONFIG ;
 int TIFFTAG_SAMPLESPERPIXEL ;
 int TIFFWriteDirectory (int *) ;
 scalar_t__ TIFFWriteScanline (int *,scalar_t__*,int,int ) ;
 int _TIFFfree (scalar_t__*) ;
 scalar_t__ _TIFFmalloc (int ) ;
 int cmsCloseProfile (int *,scalar_t__) ;
 int cmsDeleteTransform (int *,scalar_t__) ;
 double cmsDeltaE (int *,int *,int *) ;
 int cmsDoTransform (int *,scalar_t__,scalar_t__*,int *,int) ;
 double fabs (scalar_t__) ;
 scalar_t__ floor (double) ;
 int sqrt (double) ;

__attribute__((used)) static
int CmpImages(TIFF* tiff1, TIFF* tiff2, TIFF* diff)
{
    cmsUInt8Number* buf1, *buf2, *buf3=((void*)0);
    int row, cols, imagewidth = 0, imagelength = 0;
    uint16 Photometric;
    double dE = 0;
    double dR, dG, dB, dC, dM, dY, dK;
    int rc = 0;
    cmsHPROFILE hProfile1 = 0, hProfile2 = 0;
    cmsHTRANSFORM xform1 = 0, xform2 = 0;
    cmsUInt32Number dwFormat1, dwFormat2;



      TIFFGetField(tiff1, TIFFTAG_PHOTOMETRIC, &Photometric);
      TIFFGetField(tiff1, TIFFTAG_IMAGEWIDTH, &imagewidth);
      TIFFGetField(tiff1, TIFFTAG_IMAGELENGTH, &imagelength);
      TIFFGetField(tiff1, TIFFTAG_SAMPLESPERPIXEL, &Channels);

      dwFormat1 = OpenEmbedded(tiff1, &hProfile1, &xform1);
      dwFormat2 = OpenEmbedded(tiff2, &hProfile2, &xform2);



      buf1 = (cmsUInt8Number*)_TIFFmalloc(TIFFScanlineSize(tiff1));
      buf2 = (cmsUInt8Number*)_TIFFmalloc(TIFFScanlineSize(tiff2));

      if (diff) {

           TIFFSetField(diff, TIFFTAG_PHOTOMETRIC, 131);
           TIFFSetField(diff, TIFFTAG_COMPRESSION, COMPRESSION_NONE);
           TIFFSetField(diff, TIFFTAG_PLANARCONFIG, PLANARCONFIG_CONTIG);

           TIFFSetField(diff, TIFFTAG_IMAGEWIDTH, imagewidth);
           TIFFSetField(diff, TIFFTAG_IMAGELENGTH, imagelength);

           TIFFSetField(diff, TIFFTAG_SAMPLESPERPIXEL, 1);
           TIFFSetField(diff, TIFFTAG_BITSPERSAMPLE, 8);

           buf3 = (cmsUInt8Number*)_TIFFmalloc(TIFFScanlineSize(diff));
      }



      for (row = 0; row < imagelength; row++) {

        if (TIFFReadScanline(tiff1, buf1, row, 0) < 0) goto Error;
        if (TIFFReadScanline(tiff2, buf2, row, 0) < 0) goto Error;


        for (cols = 0; cols < imagewidth; cols++) {


            switch (Photometric) {

            case 130:
            case 131:

                    dE = fabs(buf2[cols] - buf1[cols]);

                    AddOnePixel(&ColorantStat[0], dE);
                    AddOnePixel(&EuclideanStat, dE);
                    break;

            case 129:

                    {
                        int index = 3 * cols;

                        dR = fabs(buf2[index+0] - buf1[index+0]);
                        dG = fabs(buf2[index+1] - buf1[index+1]);
                        dB = fabs(buf2[index+2] - buf1[index+2]);

                        dE = sqrt(dR * dR + dG * dG + dB * dB) / sqrt(3.);
                    }

                    AddOnePixel(&ColorantStat[0], dR);
                    AddOnePixel(&ColorantStat[1], dG);
                    AddOnePixel(&ColorantStat[2], dB);
                    AddOnePixel(&EuclideanStat, dE);
                    break;

            case 128:

                {
                        int index = 4 * cols;

                        dC = fabs(buf2[index+0] - buf1[index+0]);
                        dM = fabs(buf2[index+1] - buf1[index+1]);
                        dY = fabs(buf2[index+2] - buf1[index+2]);
                        dK = fabs(buf2[index+3] - buf1[index+3]);

                        dE = sqrt(dC * dC + dM * dM + dY * dY + dK * dK) / 2.;
                    }
                    AddOnePixel(&ColorantStat[0], dC);
                    AddOnePixel(&ColorantStat[1], dM);
                    AddOnePixel(&ColorantStat[2], dY);
                    AddOnePixel(&ColorantStat[3], dK);
                    AddOnePixel(&EuclideanStat, dE);
                    break;

            default:
                    FatalError("Unsupported channels: %d", Channels);
            }


            if (xform1 && xform2) {


                cmsCIELab Lab1, Lab2;
                size_t index1 = cols * PixelSize(dwFormat1);
                size_t index2 = cols * PixelSize(dwFormat2);

                cmsDoTransform(((void*)0), xform1, &buf1[index1], &Lab1, 1);
                cmsDoTransform(((void*)0), xform2, &buf2[index2], &Lab2, 1);

                dE = cmsDeltaE(((void*)0), &Lab1, &Lab2);
                AddOnePixel(&ColorimetricStat, dE);
            }


            if (diff) {
                buf3[cols] = (cmsUInt8Number) floor(dE + 0.5);
        }

        }

        if (diff) {

                if (TIFFWriteScanline(diff, buf3, row, 0) < 0) goto Error;
        }


      }

     rc = 1;

Error:

     if (hProfile1) cmsCloseProfile(((void*)0), hProfile1);
     if (hProfile2) cmsCloseProfile(((void*)0), hProfile2);
     if (xform1) cmsDeleteTransform(((void*)0), xform1);
     if (xform2) cmsDeleteTransform(((void*)0), xform2);
      _TIFFfree(buf1); _TIFFfree(buf2);
      if (diff) {
           TIFFWriteDirectory(diff);
          if (buf3 != ((void*)0)) _TIFFfree(buf3);
      }
      return rc;
}
