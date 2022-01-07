
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFF ;


 int ConsoleErrorHandler ;
 int ConsoleWarningHandler ;
 int FatalError (char*,char*) ;
 int HandleSwitches (int,char**) ;
 int Help (int ) ;
 int InitUtils (int *,char*) ;
 int TIFFClose (int *) ;
 int * TIFFOpen (char*,char*) ;
 scalar_t__ TIFFReadDirectory (int *) ;
 int TIFFSetErrorHandler (int ) ;
 int TIFFSetWarningHandler (int ) ;
 int TiffLabPlugin ;
 int TransformImage (int *,int *,int ) ;
 scalar_t__ Verbose ;
 int cInpProf ;
 int cmsPlugin (int *) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int stdout ;
 int xoptind ;

int main(int argc, char* argv[])
{
    TIFF *in, *out;

    cmsPlugin(&TiffLabPlugin);

    InitUtils(((void*)0), "tificc");

    HandleSwitches(argc, argv);

    if ((argc - xoptind) != 2) {

        Help(0);
    }


    TIFFSetErrorHandler(ConsoleErrorHandler);
    TIFFSetWarningHandler(ConsoleWarningHandler);

    in = TIFFOpen(argv[xoptind], "r");
    if (in == ((void*)0)) FatalError("Unable to open '%s'", argv[xoptind]);

    out = TIFFOpen(argv[xoptind+1], "w");

    if (out == ((void*)0)) {

        TIFFClose(in);
        FatalError("Unable to write '%s'", argv[xoptind+1]);
    }

    do {

        TransformImage(in, out, cInpProf);


    } while (TIFFReadDirectory(in));


    if (Verbose) { fprintf(stdout, "\n"); fflush(stdout); }

    TIFFClose(in);
    TIFFClose(out);

    return 0;
}
