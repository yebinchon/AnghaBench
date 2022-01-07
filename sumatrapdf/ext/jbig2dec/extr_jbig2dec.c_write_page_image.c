
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int output_format; } ;
typedef TYPE_1__ jbig2dec_params_t ;
typedef int Jbig2Image ;
typedef int FILE ;


 int fprintf (int ,char*) ;
 int jbig2_image_write_pbm (int *,int *) ;
 int jbig2_image_write_png (int *,int *) ;


 int stderr ;

__attribute__((used)) static int
write_page_image(jbig2dec_params_t *params, FILE *out, Jbig2Image *image)
{
    switch (params->output_format) {




    case 129:
        return jbig2_image_write_pbm(image, out);
    default:
        fprintf(stderr, "unsupported output format.\n");
        return 1;
    }

    return 0;
}
