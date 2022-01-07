
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int stride; int data; } ;
typedef TYPE_1__ Jbig2Image ;
typedef int FILE ;


 int fprintf (int *,char*,int,int) ;
 int fwrite (int ,int,int,int *) ;

int
jbig2_image_write_pbm(Jbig2Image *image, FILE *out)
{

    fprintf(out, "P4\n%d %d\n", image->width, image->height);




    fwrite(image->data, 1, image->height * image->stride, out);


    return 0;
}
