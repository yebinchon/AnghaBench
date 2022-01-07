
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Jbig2Image ;
typedef int Jbig2Ctx ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int * jbig2_image_read_pbm (int *,int *) ;
 int stderr ;

Jbig2Image *
jbig2_image_read_pbm_file(Jbig2Ctx *ctx, char *filename)
{
    FILE *in;
    Jbig2Image *image;

    if ((in = fopen(filename, "rb")) == ((void*)0)) {
        fprintf(stderr, "unable to open '%s' for reading\n", filename);
        return ((void*)0);
    }

    image = jbig2_image_read_pbm(ctx, in);

    fclose(in);

    return (image);
}
