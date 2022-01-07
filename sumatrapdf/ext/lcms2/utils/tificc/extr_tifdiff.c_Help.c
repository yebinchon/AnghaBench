
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SW ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static
void Help()
{
    fprintf(stderr, "Little cms TIFF compare utility. v1.0\n\n");

    fprintf(stderr, "usage: tiffdiff [flags] input.tif output.tif\n");

    fprintf(stderr, "\nflags:\n\n");


    fprintf(stderr, "%co<tiff>   - Output TIFF file\n", SW);
    fprintf(stderr, "%cg<CGATS>  - Output results in CGATS file\n", SW);

    fprintf(stderr, "\n");

    fprintf(stderr, "%cv - Verbose (show warnings)\n", SW);
    fprintf(stderr, "%ch - This help\n", SW);


    fflush(stderr);
    exit(0);
}
