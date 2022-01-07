
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {double Min; double Peak; scalar_t__ n; } ;


 int AssureShortTagIs (int *,int *,int ,int,char*) ;
 scalar_t__ CGATSout ;
 int ClearStatistics (TYPE_1__*) ;
 int CmpImages (int *,int *,int *) ;
 TYPE_1__* ColorantStat ;
 TYPE_1__ ColorimetricStat ;
 int ConsoleErrorHandler ;
 int ConsoleWarningHandler ;
 int CreateCGATS (char*,char*) ;
 int EqualLongTag (int *,int *,int ,char*) ;
 int EqualShortTag (int *,int *,int ,char*) ;
 TYPE_1__ EuclideanStat ;
 int FatalError (char*,...) ;
 int HandleSwitches (int,char**) ;
 int Help () ;
 int InitUtils (int *,char*) ;
 double Mean (TYPE_1__*) ;
 int PLANARCONFIG_CONTIG ;
 double Std (TYPE_1__*) ;
 int TIFFClose (int *) ;
 int * TIFFOpen (char*,char*) ;
 int TIFFSetErrorHandler (int ) ;
 int TIFFSetWarningHandler (int ) ;
 int TIFFTAG_BITSPERSAMPLE ;
 int TIFFTAG_IMAGELENGTH ;
 int TIFFTAG_IMAGEWIDTH ;
 int TIFFTAG_PLANARCONFIG ;
 int TIFFTAG_SAMPLESPERPIXEL ;
 int * Tiff1 ;
 int * Tiff2 ;
 int * TiffDiff ;
 char* TiffDiffFilename ;
 int cmsCloseProfile (int *,scalar_t__) ;
 scalar_t__ cmsCreateLab4Profile (int *) ;
 scalar_t__ hLab ;
 int printf (char*,double,double,double,double,double) ;
 int xoptind ;

int main(int argc, char* argv[])
{
      int i;

      Tiff1 = Tiff2 = TiffDiff = ((void*)0);

      InitUtils(((void*)0), "tiffdiff");

      HandleSwitches(argc, argv);

      if ((argc - xoptind) != 2) {

              Help();
              }

      TIFFSetErrorHandler(ConsoleErrorHandler);
      TIFFSetWarningHandler(ConsoleWarningHandler);

      Tiff1 = TIFFOpen(argv[xoptind], "r");
      if (Tiff1 == ((void*)0)) FatalError("Unable to open '%s'", argv[xoptind]);

      Tiff2 = TIFFOpen(argv[xoptind+1], "r");
      if (Tiff2 == ((void*)0)) FatalError("Unable to open '%s'", argv[xoptind+1]);

      if (TiffDiffFilename) {

          TiffDiff = TIFFOpen(TiffDiffFilename, "w");
          if (TiffDiff == ((void*)0)) FatalError("Unable to create '%s'", TiffDiffFilename);

      }


      AssureShortTagIs(Tiff1, Tiff2, TIFFTAG_PLANARCONFIG, PLANARCONFIG_CONTIG, "Planar Config");
      AssureShortTagIs(Tiff1, Tiff2, TIFFTAG_BITSPERSAMPLE, 8, "8 bit per sample");

      EqualLongTag(Tiff1, Tiff2, TIFFTAG_IMAGEWIDTH, "Image width");
      EqualLongTag(Tiff1, Tiff2, TIFFTAG_IMAGELENGTH, "Image length");

      EqualShortTag(Tiff1, Tiff2, TIFFTAG_SAMPLESPERPIXEL, "Samples per pixel");


      hLab = cmsCreateLab4Profile(((void*)0));

      ClearStatistics(&EuclideanStat);
      for (i=0; i < 4; i++)
            ClearStatistics(&ColorantStat[i]);

      if (!CmpImages(Tiff1, Tiff2, TiffDiff))
                FatalError("Error comparing images");

      if (CGATSout) {
            CreateCGATS(argv[xoptind], argv[xoptind+1]);
      }
      else {

        double Per100 = 100.0 * ((255.0 - Mean(&EuclideanStat)) / 255.0);

        printf("Digital counts  %g%% equal. mean %g, min %g, max %g, Std %g\n", Per100, Mean(&EuclideanStat),
                                                                                EuclideanStat.Min,
                                                                                EuclideanStat.Peak,
                                                                                Std(&EuclideanStat));

        if (ColorimetricStat.n > 0) {

            Per100 = 100.0 * ((255.0 - Mean(&ColorimetricStat)) / 255.0);

            printf("dE Colorimetric %g%% equal. mean %g, min %g, max %g, Std %g\n", Per100, Mean(&ColorimetricStat),
                                                                                    ColorimetricStat.Min,
                                                                                    ColorimetricStat.Peak,
                                                                                    Std(&ColorimetricStat));
        }

      }

      if (hLab) cmsCloseProfile(((void*)0), hLab);
      if (Tiff1) TIFFClose(Tiff1);
      if (Tiff2) TIFFClose(Tiff2);
      if (TiffDiff) TIFFClose(TiffDiff);

      return 0;
}
