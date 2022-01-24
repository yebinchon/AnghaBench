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
typedef  scalar_t__ cmsUInt8Number ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  scalar_t__ cmsHTRANSFORM ;
typedef  scalar_t__ cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsCIELab ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double) ; 
 int COMPRESSION_NONE ; 
 int Channels ; 
 int /*<<< orphan*/ * ColorantStat ; 
 int /*<<< orphan*/  ColorimetricStat ; 
 int /*<<< orphan*/  EuclideanStat ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
#define  PHOTOMETRIC_MINISBLACK 131 
#define  PHOTOMETRIC_MINISWHITE 130 
#define  PHOTOMETRIC_RGB 129 
#define  PHOTOMETRIC_SEPARATED 128 
 int PLANARCONFIG_CONTIG ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TIFFTAG_BITSPERSAMPLE ; 
 int /*<<< orphan*/  TIFFTAG_COMPRESSION ; 
 int /*<<< orphan*/  TIFFTAG_IMAGELENGTH ; 
 int /*<<< orphan*/  TIFFTAG_IMAGEWIDTH ; 
 int /*<<< orphan*/  TIFFTAG_PHOTOMETRIC ; 
 int /*<<< orphan*/  TIFFTAG_PLANARCONFIG ; 
 int /*<<< orphan*/  TIFFTAG_SAMPLESPERPIXEL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 double FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int) ; 
 double FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (double) ; 
 int FUNC18 (double) ; 

__attribute__((used)) static
int FUNC19(TIFF* tiff1, TIFF* tiff2, TIFF* diff)
{
    cmsUInt8Number* buf1, *buf2, *buf3=NULL;
    int row, cols, imagewidth = 0, imagelength = 0;
    uint16   Photometric;
    double dE = 0;
    double dR, dG, dB, dC, dM, dY, dK;
    int rc = 0;
    cmsHPROFILE hProfile1 = 0, hProfile2 = 0;
    cmsHTRANSFORM xform1 = 0, xform2 = 0;
    cmsUInt32Number dwFormat1, dwFormat2;



      FUNC4(tiff1, TIFFTAG_PHOTOMETRIC, &Photometric);
      FUNC4(tiff1, TIFFTAG_IMAGEWIDTH,  &imagewidth);
      FUNC4(tiff1, TIFFTAG_IMAGELENGTH, &imagelength);
      FUNC4(tiff1, TIFFTAG_SAMPLESPERPIXEL, &Channels);

      dwFormat1 = FUNC2(tiff1, &hProfile1, &xform1);
      dwFormat2 = FUNC2(tiff2, &hProfile2, &xform2);



      buf1 = (cmsUInt8Number*)FUNC11(FUNC6(tiff1));
      buf2 = (cmsUInt8Number*)FUNC11(FUNC6(tiff2));

      if (diff) {

           FUNC7(diff, TIFFTAG_PHOTOMETRIC, PHOTOMETRIC_MINISBLACK);
           FUNC7(diff, TIFFTAG_COMPRESSION, COMPRESSION_NONE);
           FUNC7(diff, TIFFTAG_PLANARCONFIG, PLANARCONFIG_CONTIG);

           FUNC7(diff, TIFFTAG_IMAGEWIDTH,  imagewidth);
           FUNC7(diff, TIFFTAG_IMAGELENGTH, imagelength);

           FUNC7(diff, TIFFTAG_SAMPLESPERPIXEL, 1);
           FUNC7(diff, TIFFTAG_BITSPERSAMPLE, 8);

           buf3 = (cmsUInt8Number*)FUNC11(FUNC6(diff));
      }



      for (row = 0; row < imagelength; row++) {

        if (FUNC5(tiff1, buf1, row, 0) < 0) goto Error;
        if (FUNC5(tiff2, buf2, row, 0) < 0) goto Error;


        for (cols = 0; cols < imagewidth; cols++) {


            switch (Photometric) {

            case PHOTOMETRIC_MINISWHITE:
            case PHOTOMETRIC_MINISBLACK:

                    dE = FUNC16(buf2[cols] - buf1[cols]);

                    FUNC0(&ColorantStat[0], dE);
                    FUNC0(&EuclideanStat, dE);
                    break;

            case PHOTOMETRIC_RGB:

                    {
                        int index = 3 * cols;

                        dR = FUNC16(buf2[index+0] - buf1[index+0]);
                        dG = FUNC16(buf2[index+1] - buf1[index+1]);
                        dB = FUNC16(buf2[index+2] - buf1[index+2]);

                        dE = FUNC18(dR * dR + dG * dG + dB * dB) / FUNC18(3.);
                    }

                    FUNC0(&ColorantStat[0], dR);
                    FUNC0(&ColorantStat[1], dG);
                    FUNC0(&ColorantStat[2], dB);
                    FUNC0(&EuclideanStat,   dE);
                    break;

            case PHOTOMETRIC_SEPARATED:

                {
                        int index = 4 * cols;

                        dC = FUNC16(buf2[index+0] - buf1[index+0]);
                        dM = FUNC16(buf2[index+1] - buf1[index+1]);
                        dY = FUNC16(buf2[index+2] - buf1[index+2]);
                        dK = FUNC16(buf2[index+3] - buf1[index+3]);

                        dE = FUNC18(dC * dC + dM * dM + dY * dY + dK * dK) / 2.;
                    }
                    FUNC0(&ColorantStat[0], dC);
                    FUNC0(&ColorantStat[1], dM);
                    FUNC0(&ColorantStat[2], dY);
                    FUNC0(&ColorantStat[3], dK);
                    FUNC0(&EuclideanStat,   dE);
                    break;

            default:
                    FUNC1("Unsupported channels: %d", Channels);
            }


            if (xform1 && xform2) {


                cmsCIELab Lab1, Lab2;
                size_t index1 = cols * FUNC3(dwFormat1);
                size_t index2 = cols * FUNC3(dwFormat2);

                FUNC15(NULL, xform1, &buf1[index1], &Lab1,  1);
                FUNC15(NULL, xform2, &buf2[index2], &Lab2,  1);

                dE = FUNC14(NULL, &Lab1, &Lab2);
                FUNC0(&ColorimetricStat, dE);
            }


            if (diff) {
                buf3[cols] = (cmsUInt8Number) FUNC17(dE + 0.5);
        }

        }

        if (diff) {

                if (FUNC9(diff, buf3, row, 0) < 0) goto Error;
        }


      }

     rc = 1;

Error:

     if (hProfile1) FUNC12(NULL, hProfile1);
     if (hProfile2) FUNC12(NULL, hProfile2);
     if (xform1) FUNC13(NULL, xform1);
     if (xform2) FUNC13(NULL, xform2);
      FUNC10(buf1); FUNC10(buf2);
      if (diff) {
           FUNC8(diff);
          if (buf3 != NULL) FUNC10(buf3);
      }
      return rc;
}