#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {double Min; double Peak; scalar_t__ n; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ CGATSout ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* ColorantStat ; 
 TYPE_1__ ColorimetricStat ; 
 int /*<<< orphan*/  ConsoleErrorHandler ; 
 int /*<<< orphan*/  ConsoleWarningHandler ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ EuclideanStat ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 double FUNC10 (TYPE_1__*) ; 
 int PLANARCONFIG_CONTIG ; 
 double FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIFFTAG_BITSPERSAMPLE ; 
 int /*<<< orphan*/  TIFFTAG_IMAGELENGTH ; 
 int /*<<< orphan*/  TIFFTAG_IMAGEWIDTH ; 
 int /*<<< orphan*/  TIFFTAG_PLANARCONFIG ; 
 int /*<<< orphan*/  TIFFTAG_SAMPLESPERPIXEL ; 
 int /*<<< orphan*/ * Tiff1 ; 
 int /*<<< orphan*/ * Tiff2 ; 
 int /*<<< orphan*/ * TiffDiff ; 
 char* TiffDiffFilename ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ hLab ; 
 int /*<<< orphan*/  FUNC18 (char*,double,double,double,double,double) ; 
 int xoptind ; 

int FUNC19(int argc, char* argv[])
{
      int i;

      Tiff1 = Tiff2 = TiffDiff = NULL;

      FUNC9(NULL, "tiffdiff");

      FUNC7(argc, argv);

      if ((argc - xoptind) != 2) {

              FUNC8();
              }

      FUNC14(ConsoleErrorHandler);
      FUNC15(ConsoleWarningHandler);

      Tiff1 = FUNC13(argv[xoptind], "r");
      if (Tiff1 == NULL) FUNC6("Unable to open '%s'", argv[xoptind]);

      Tiff2 = FUNC13(argv[xoptind+1], "r");
      if (Tiff2 == NULL) FUNC6("Unable to open '%s'", argv[xoptind+1]);

      if (TiffDiffFilename) {

          TiffDiff = FUNC13(TiffDiffFilename, "w");
          if (TiffDiff == NULL) FUNC6("Unable to create '%s'", TiffDiffFilename);

      }


      FUNC0(Tiff1, Tiff2, TIFFTAG_PLANARCONFIG, PLANARCONFIG_CONTIG, "Planar Config");
      FUNC0(Tiff1, Tiff2, TIFFTAG_BITSPERSAMPLE, 8, "8 bit per sample");

      FUNC4(Tiff1, Tiff2, TIFFTAG_IMAGEWIDTH,  "Image width");
      FUNC4(Tiff1, Tiff2, TIFFTAG_IMAGELENGTH, "Image length");

      FUNC5(Tiff1, Tiff2, TIFFTAG_SAMPLESPERPIXEL, "Samples per pixel");


      hLab = FUNC17(NULL);

      FUNC1(&EuclideanStat);
      for (i=0; i < 4; i++)
            FUNC1(&ColorantStat[i]);

      if (!FUNC2(Tiff1, Tiff2, TiffDiff))
                FUNC6("Error comparing images");

      if (CGATSout) {
            FUNC3(argv[xoptind], argv[xoptind+1]);
      }
      else {

        double  Per100 = 100.0 * ((255.0 - FUNC10(&EuclideanStat)) / 255.0);

        FUNC18("Digital counts  %g%% equal. mean %g, min %g, max %g, Std %g\n", Per100, FUNC10(&EuclideanStat),
                                                                                EuclideanStat.Min,
                                                                                EuclideanStat.Peak,
                                                                                FUNC11(&EuclideanStat));

        if (ColorimetricStat.n > 0) {

            Per100 = 100.0 * ((255.0 - FUNC10(&ColorimetricStat)) / 255.0);

            FUNC18("dE Colorimetric %g%% equal. mean %g, min %g, max %g, Std %g\n", Per100, FUNC10(&ColorimetricStat),
                                                                                    ColorimetricStat.Min,
                                                                                    ColorimetricStat.Peak,
                                                                                    FUNC11(&ColorimetricStat));
        }

      }

      if (hLab)     FUNC16(NULL, hLab);
      if (Tiff1)    FUNC12(Tiff1);
      if (Tiff2)    FUNC12(Tiff2);
      if (TiffDiff) FUNC12(TiffDiff);

      return 0;
}