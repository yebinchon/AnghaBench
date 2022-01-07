
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int numcomps; scalar_t__ color_space; unsigned char* icc_profile_buf; TYPE_1__* comps; } ;
typedef TYPE_2__ opj_image_t ;
typedef int opj_dparameters_t ;
typedef int opj_dinfo_t ;
typedef int opj_common_ptr ;
struct TYPE_13__ {int * buffer; } ;
typedef TYPE_3__ opj_cio_t ;
struct TYPE_14__ {int numcomps; int CbCr_subsampling_dx; int CbCr_subsampling_dy; int meth; void* enumcs; int prec; int h; int w; } ;
typedef TYPE_4__ mj2_cparameters_t ;
struct TYPE_11__ {int dx; int dy; int prec; int h; int w; } ;
typedef int FILE ;


 scalar_t__ CLRSPC_SRGB ;
 int CODEC_J2K ;
 void* ENUMCS_GRAY ;
 void* ENUMCS_SRGB ;
 void* ENUMCS_SYCC ;
 int J2K_CODESTREAM_MAGIC ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (unsigned char*,int,long,int *) ;
 int free (unsigned char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 scalar_t__ malloc (long) ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int memset (int *,int ,int) ;
 int opj_cio_close (TYPE_3__*) ;
 TYPE_3__* opj_cio_open (int ,unsigned char*,long) ;
 int * opj_create_decompress (int ) ;
 TYPE_2__* opj_decode (int *,TYPE_3__*) ;
 int opj_destroy_decompress (int *) ;
 int opj_image_destroy (TYPE_2__*) ;
 int opj_set_default_decoder_parameters (int *) ;
 int opj_setup_decoder (int *,int *) ;

__attribute__((used)) static int test_image(const char *fname, mj2_cparameters_t *cp)
{
    FILE *reader;
    opj_image_t *image;
    unsigned char *src;
    opj_dinfo_t *dinfo;
    opj_cio_t *cio;
    opj_dparameters_t dparameters;
    int success;
    long src_len;

    success = 0;

    if ((reader = fopen(fname, "rb")) == ((void*)0)) {
        return success;
    }

    fseek(reader, 0, SEEK_END);
    src_len = ftell(reader);
    fseek(reader, 0, SEEK_SET);
    src = (unsigned char*) malloc(src_len);
    fread(src, 1, src_len, reader);
    fclose(reader);

    if (memcmp(src, J2K_CODESTREAM_MAGIC, 4) != 0) {
        free(src);
        return success;
    }
    memset(&dparameters, 0, sizeof(opj_dparameters_t));

    opj_set_default_decoder_parameters(&dparameters);

    dinfo = opj_create_decompress(CODEC_J2K);

    opj_setup_decoder(dinfo, &dparameters);

    cio = opj_cio_open((opj_common_ptr)dinfo, src, src_len);

    image = opj_decode(dinfo, cio);

    free(src);
    cio->buffer = ((void*)0);
    opj_cio_close(cio);

    if (image == ((void*)0)) {
        goto fin;
    }

    cp->numcomps = image->numcomps;
    cp->w = image->comps[0].w;
    cp->h = image->comps[0].h;
    cp->prec = image->comps[0].prec;

    if (image->numcomps > 2) {
        if ((image->comps[0].dx == 1)
                && (image->comps[1].dx == 2)
                && (image->comps[2].dx == 2)
                && (image->comps[0].dy == 1)
                && (image->comps[1].dy == 2)
                && (image->comps[2].dy == 2)) {

            cp->enumcs = ENUMCS_SYCC;
            cp->CbCr_subsampling_dx = 2;
            cp->CbCr_subsampling_dy = 2;
        } else if ((image->comps[0].dx == 1)
                   && (image->comps[1].dx == 2)
                   && (image->comps[2].dx == 2)
                   && (image->comps[0].dy == 1)
                   && (image->comps[1].dy == 1)
                   && (image->comps[2].dy == 1)) {

            cp->enumcs = ENUMCS_SYCC;
            cp->CbCr_subsampling_dx = 2;
            cp->CbCr_subsampling_dy = 1;
        } else if ((image->comps[0].dx == 1)
                   && (image->comps[1].dx == 1)
                   && (image->comps[2].dx == 1)
                   && (image->comps[0].dy == 1)
                   && (image->comps[1].dy == 1)
                   && (image->comps[2].dy == 1)) {


            if (image->color_space == CLRSPC_SRGB) {
                cp->enumcs = ENUMCS_SRGB;



            } else {
                cp->enumcs = ENUMCS_SYCC;

                cp->CbCr_subsampling_dx = 1;
                cp->CbCr_subsampling_dy = 1;
            }
        } else {
            goto fin;
        }
    } else {
        cp->enumcs = ENUMCS_GRAY;


    }
    if (image->icc_profile_buf) {
        cp->meth = 2;
        free(image->icc_profile_buf);
        image->icc_profile_buf = ((void*)0);
    } else {
        cp->meth = 1;
    }

    success = 1;
fin:
    if (dinfo) {
        opj_destroy_decompress(dinfo);
    }

    if (image) {
        opj_image_destroy(image);
    }

    return success;
}
