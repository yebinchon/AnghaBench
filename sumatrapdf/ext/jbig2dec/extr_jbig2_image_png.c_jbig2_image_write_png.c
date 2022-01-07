
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int png_voidp ;
typedef int * png_structp ;
typedef int ** png_infopp ;
typedef int * png_infop ;
typedef scalar_t__ png_bytep ;
struct TYPE_3__ {scalar_t__ height; scalar_t__ stride; scalar_t__ data; int width; } ;
typedef TYPE_1__ Jbig2Image ;
typedef int FILE ;


 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COMPRESSION_TYPE_DEFAULT ;
 int PNG_FILTER_TYPE_DEFAULT ;
 int PNG_INTERLACE_NONE ;
 int PNG_LIBPNG_VER_STRING ;
 int fprintf (int ,char*) ;
 int jbig2_png_flush ;
 int jbig2_png_write_data ;
 int * png_create_info_struct (int *) ;
 int * png_create_write_struct (int ,int *,int *,int *) ;
 int png_destroy_write_struct (int **,int **) ;
 int png_jmpbuf (int *) ;
 int png_set_IHDR (int *,int *,int ,scalar_t__,int,int ,int ,int ,int ) ;
 int png_set_invert_mono (int *) ;
 int png_set_write_fn (int *,int ,int ,int ) ;
 int png_write_end (int *,int *) ;
 int png_write_info (int *,int *) ;
 int png_write_row (int *,scalar_t__) ;
 scalar_t__ setjmp (int ) ;
 int stderr ;

int
jbig2_image_write_png(Jbig2Image *image, FILE *out)
{
    uint32_t i;
    png_structp png;
    png_infop info;
    png_bytep rowpointer;

    png = png_create_write_struct(PNG_LIBPNG_VER_STRING, ((void*)0), ((void*)0), ((void*)0));
    if (png == ((void*)0)) {
        fprintf(stderr, "unable to create png structure\n");
        return 2;
    }

    info = png_create_info_struct(png);
    if (info == ((void*)0)) {
        fprintf(stderr, "unable to create png info structure\n");
        png_destroy_write_struct(&png, (png_infopp) ((void*)0));
        return 3;
    }


    if (setjmp(png_jmpbuf(png))) {

        fprintf(stderr, "internal error in libpng saving file\n");
        png_destroy_write_struct(&png, &info);
        return 4;
    }





    png_set_write_fn(png, (png_voidp) out, jbig2_png_write_data, jbig2_png_flush);


    png_set_IHDR(png, info, image->width, image->height, 1, PNG_COLOR_TYPE_GRAY, PNG_INTERLACE_NONE, PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);
    png_write_info(png, info);


    png_set_invert_mono(png);


    rowpointer = (png_bytep) image->data;
    for (i = 0; i < image->height; i++) {
        png_write_row(png, rowpointer);
        rowpointer += image->stride;
    }


    png_write_end(png, info);
    png_destroy_write_struct(&png, &info);

    return 0;
}
