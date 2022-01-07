
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char OPJ_UINT16 ;
typedef scalar_t__ OPJ_BOOL ;
typedef int FILE ;


 int fprintf (int ,char*) ;
 int fputs (char*,int ) ;
 int fwrite (unsigned char*,int,int,int *) ;
 int stderr ;
 unsigned char swap16 (unsigned char) ;

__attribute__((used)) static int tga_writeheader(FILE *fp, int bits_per_pixel, int width, int height,
                           OPJ_BOOL flip_image)
{
    OPJ_UINT16 image_w, image_h, us0;
    unsigned char uc0, image_type;
    unsigned char pixel_depth, image_desc;

    if (!bits_per_pixel || !width || !height) {
        return 0;
    }

    pixel_depth = 0;

    if (bits_per_pixel < 256) {
        pixel_depth = (unsigned char)bits_per_pixel;
    } else {
        fprintf(stderr, "ERROR: Wrong bits per pixel inside tga_header");
        return 0;
    }
    uc0 = 0;

    if (fwrite(&uc0, 1, 1, fp) != 1) {
        goto fails;
    }
    if (fwrite(&uc0, 1, 1, fp) != 1) {
        goto fails;
    }

    image_type = 2;
    if (fwrite(&image_type, 1, 1, fp) != 1) {
        goto fails;
    }

    us0 = 0;
    if (fwrite(&us0, 2, 1, fp) != 1) {
        goto fails;
    }
    if (fwrite(&us0, 2, 1, fp) != 1) {
        goto fails;
    }
    if (fwrite(&uc0, 1, 1, fp) != 1) {
        goto fails;
    }

    if (fwrite(&us0, 2, 1, fp) != 1) {
        goto fails;
    }
    if (fwrite(&us0, 2, 1, fp) != 1) {
        goto fails;
    }

    image_w = (unsigned short)width;
    image_h = (unsigned short) height;


    if (fwrite(&image_w, 2, 1, fp) != 1) {
        goto fails;
    }
    if (fwrite(&image_h, 2, 1, fp) != 1) {
        goto fails;
    }
    if (fwrite(&pixel_depth, 1, 1, fp) != 1) {
        goto fails;
    }

    image_desc = 8;

    if (flip_image) {
        image_desc |= 32;
    }
    if (fwrite(&image_desc, 1, 1, fp) != 1) {
        goto fails;
    }

    return 1;

fails:
    fputs("\nwrite_tgaheader: write ERROR\n", stderr);
    return 0;
}
