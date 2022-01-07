
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int numcomps; TYPE_1__* comps; } ;
typedef TYPE_2__ opj_image_t ;
struct TYPE_10__ {int cp_cinema; int numresolution; int tcp_numlayers; float* tcp_rates; int cp_disto_alloc; int max_comp_size; int POC; int numpocs; void* cp_rsiz; } ;
typedef TYPE_3__ opj_cparameters_t ;
struct TYPE_11__ {int* rates; } ;
typedef TYPE_4__ img_fol_t ;
struct TYPE_8__ {int w; int h; int prec; int dx; int dy; } ;





 int CINEMA_24_CS ;
 int CINEMA_48_CS ;
 int COMP_24_CS ;
 int COMP_48_CS ;
 void* STD_RSIZ ;
 int fprintf (int ,char*,int,int) ;
 int initialise_4K_poc (int ,int) ;
 int stdout ;

__attribute__((used)) static void cinema_setup_encoder(opj_cparameters_t *parameters,
                                 opj_image_t *image, img_fol_t *img_fol)
{
    int i;
    float temp_rate;

    switch (parameters->cp_cinema) {
    case 130:
    case 129:
        if (parameters->numresolution > 6) {
            parameters->numresolution = 6;
        }
        if (!((image->comps[0].w == 2048) | (image->comps[0].h == 1080))) {
            fprintf(stdout,
                    "Image coordinates %d x %d is not 2K compliant.\nJPEG Digital Cinema Profile-3 "
                    "(2K profile) compliance requires that at least one of coordinates match 2048 x 1080\n",
                    image->comps[0].w, image->comps[0].h);
            parameters->cp_rsiz = STD_RSIZ;
        }
        break;

    case 128:
        if (parameters->numresolution < 1) {
            parameters->numresolution = 1;
        } else if (parameters->numresolution > 7) {
            parameters->numresolution = 7;
        }
        if (!((image->comps[0].w == 4096) | (image->comps[0].h == 2160))) {
            fprintf(stdout,
                    "Image coordinates %d x %d is not 4K compliant.\nJPEG Digital Cinema Profile-4"
                    "(4K profile) compliance requires that at least one of coordinates match 4096 x 2160\n",
                    image->comps[0].w, image->comps[0].h);
            parameters->cp_rsiz = STD_RSIZ;
        }
        parameters->numpocs = initialise_4K_poc(parameters->POC,
                                                parameters->numresolution);
        break;
    default :
        break;
    }

    switch (parameters->cp_cinema) {
    case 130:
    case 128:
        for (i = 0 ; i < parameters->tcp_numlayers ; i++) {
            temp_rate = 0 ;
            if (img_fol->rates[i] == 0) {
                parameters->tcp_rates[0] = ((float)(image->numcomps * image->comps[0].w *
                                                    image->comps[0].h * image->comps[0].prec)) /
                                           (CINEMA_24_CS * 8 * image->comps[0].dx * image->comps[0].dy);
            } else {
                temp_rate = ((float)(image->numcomps * image->comps[0].w * image->comps[0].h *
                                     image->comps[0].prec)) /
                            (img_fol->rates[i] * 8 * image->comps[0].dx * image->comps[0].dy);
                if (temp_rate > CINEMA_24_CS) {
                    parameters->tcp_rates[i] = ((float)(image->numcomps * image->comps[0].w *
                                                        image->comps[0].h * image->comps[0].prec)) /
                                               (CINEMA_24_CS * 8 * image->comps[0].dx * image->comps[0].dy);
                } else {
                    parameters->tcp_rates[i] = img_fol->rates[i];
                }
            }
        }
        parameters->max_comp_size = COMP_24_CS;
        break;

    case 129:
        for (i = 0 ; i < parameters->tcp_numlayers ; i++) {
            temp_rate = 0 ;
            if (img_fol->rates[i] == 0) {
                parameters->tcp_rates[0] = ((float)(image->numcomps * image->comps[0].w *
                                                    image->comps[0].h * image->comps[0].prec)) /
                                           (CINEMA_48_CS * 8 * image->comps[0].dx * image->comps[0].dy);
            } else {
                temp_rate = ((float)(image->numcomps * image->comps[0].w * image->comps[0].h *
                                     image->comps[0].prec)) /
                            (img_fol->rates[i] * 8 * image->comps[0].dx * image->comps[0].dy);
                if (temp_rate > CINEMA_48_CS) {
                    parameters->tcp_rates[0] = ((float)(image->numcomps * image->comps[0].w *
                                                        image->comps[0].h * image->comps[0].prec)) /
                                               (CINEMA_48_CS * 8 * image->comps[0].dx * image->comps[0].dy);
                } else {
                    parameters->tcp_rates[i] = img_fol->rates[i];
                }
            }
        }
        parameters->max_comp_size = COMP_48_CS;
        break;
    default:
        break;
    }
    parameters->cp_disto_alloc = 1;
}
