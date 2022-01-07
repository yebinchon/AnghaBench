
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Jbig2Image ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int jbig2_image_write_png (int *,int *) ;
 int stderr ;

int
jbig2_image_write_png_file(Jbig2Image *image, char *filename)
{
    FILE *out;
    int code;

    if ((out = fopen(filename, "wb")) == ((void*)0)) {
        fprintf(stderr, "unable to open '%s' for writing\n", filename);
        return 1;
    }

    code = jbig2_image_write_png(image, out);

    fclose(out);
    return (code);
}
