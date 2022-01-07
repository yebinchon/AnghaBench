
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_5__* jp2_cdef; } ;
struct TYPE_16__ {int numcl; int* cl; int numcomps; int bpc; int C; int meth; int enumcs; int jpip_on; scalar_t__ approx; scalar_t__ precedence; TYPE_1__ color; TYPE_4__* comps; scalar_t__ IPR; scalar_t__ UnkC; scalar_t__ w; scalar_t__ h; scalar_t__ minversion; void* brand; int j2k; } ;
typedef TYPE_3__ opj_jp2_t ;
struct TYPE_17__ {int bpcc; } ;
typedef TYPE_4__ opj_jp2_comps_t ;
struct TYPE_18__ {TYPE_6__* info; void* n; } ;
typedef TYPE_5__ opj_jp2_cdef_t ;
struct TYPE_19__ {unsigned int typ; unsigned int asoc; void* cn; } ;
typedef TYPE_6__ opj_jp2_cdef_info_t ;
struct TYPE_20__ {int numcomps; int color_space; TYPE_2__* comps; scalar_t__ icc_profile_len; scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; scalar_t__ y1; } ;
typedef TYPE_7__ opj_image_t ;
typedef int opj_event_mgr_t ;
struct TYPE_21__ {int jpip_on; } ;
typedef TYPE_8__ opj_cparameters_t ;
struct TYPE_15__ {int prec; int sgnd; scalar_t__ alpha; } ;
typedef int OPJ_UINT32 ;
typedef void* OPJ_UINT16 ;
typedef scalar_t__ OPJ_BOOL ;


 int EVT_ERROR ;
 int EVT_WARNING ;
 void* JP2_JP2 ;
 scalar_t__ OPJ_FALSE ;
 scalar_t__ OPJ_TRUE ;
 int opj_event_msg (int *,int ,char*) ;
 scalar_t__ opj_j2k_setup_encoder (int ,TYPE_8__*,TYPE_7__*,int *) ;
 scalar_t__ opj_malloc (int) ;

OPJ_BOOL opj_jp2_setup_encoder(opj_jp2_t *jp2,
                               opj_cparameters_t *parameters,
                               opj_image_t *image,
                               opj_event_mgr_t * p_manager)
{
    OPJ_UINT32 i;
    OPJ_UINT32 depth_0;
    OPJ_UINT32 sign;
    OPJ_UINT32 alpha_count;
    OPJ_UINT32 color_channels = 0U;
    OPJ_UINT32 alpha_channel = 0U;


    if (!jp2 || !parameters || !image) {
        return OPJ_FALSE;
    }





    if (image->numcomps < 1 || image->numcomps > 16384) {
        opj_event_msg(p_manager, EVT_ERROR,
                      "Invalid number of components specified while setting up JP2 encoder\n");
        return OPJ_FALSE;
    }

    if (opj_j2k_setup_encoder(jp2->j2k, parameters, image,
                              p_manager) == OPJ_FALSE) {
        return OPJ_FALSE;
    }






    jp2->brand = JP2_JP2;
    jp2->minversion = 0;
    jp2->numcl = 1;
    jp2->cl = (OPJ_UINT32*) opj_malloc(jp2->numcl * sizeof(OPJ_UINT32));
    if (!jp2->cl) {
        opj_event_msg(p_manager, EVT_ERROR,
                      "Not enough memory when setup the JP2 encoder\n");
        return OPJ_FALSE;
    }
    jp2->cl[0] = JP2_JP2;



    jp2->numcomps = image->numcomps;
    jp2->comps = (opj_jp2_comps_t*) opj_malloc(jp2->numcomps * sizeof(
                     opj_jp2_comps_t));
    if (!jp2->comps) {
        opj_event_msg(p_manager, EVT_ERROR,
                      "Not enough memory when setup the JP2 encoder\n");

        return OPJ_FALSE;
    }

    jp2->h = image->y1 - image->y0;
    jp2->w = image->x1 - image->x0;

    depth_0 = image->comps[0].prec - 1;
    sign = image->comps[0].sgnd;
    jp2->bpc = depth_0 + (sign << 7);
    for (i = 1; i < image->numcomps; i++) {
        OPJ_UINT32 depth = image->comps[i].prec - 1;
        sign = image->comps[i].sgnd;
        if (depth_0 != depth) {
            jp2->bpc = 255;
        }
    }
    jp2->C = 7;
    jp2->UnkC = 0;
    jp2->IPR = 0;


    for (i = 0; i < image->numcomps; i++) {
        jp2->comps[i].bpcc = image->comps[i].prec - 1 + (image->comps[i].sgnd << 7);
    }


    if (image->icc_profile_len) {
        jp2->meth = 2;
        jp2->enumcs = 0;
    } else {
        jp2->meth = 1;
        if (image->color_space == 1) {
            jp2->enumcs = 16;
        } else if (image->color_space == 2) {
            jp2->enumcs = 17;
        } else if (image->color_space == 3) {
            jp2->enumcs = 18;
        }
    }




    alpha_count = 0U;
    for (i = 0; i < image->numcomps; i++) {
        if (image->comps[i].alpha != 0) {
            alpha_count++;
            alpha_channel = i;
        }
    }
    if (alpha_count == 1U) {
        switch (jp2->enumcs) {
        case 16:
        case 18:
            color_channels = 3;
            break;
        case 17:
            color_channels = 1;
            break;
        default:
            alpha_count = 0U;
            break;
        }
        if (alpha_count == 0U) {
            opj_event_msg(p_manager, EVT_WARNING,
                          "Alpha channel specified but unknown enumcs. No cdef box will be created.\n");
        } else if (image->numcomps < (color_channels + 1)) {
            opj_event_msg(p_manager, EVT_WARNING,
                          "Alpha channel specified but not enough image components for an automatic cdef box creation.\n");
            alpha_count = 0U;
        } else if ((OPJ_UINT32)alpha_channel < color_channels) {
            opj_event_msg(p_manager, EVT_WARNING,
                          "Alpha channel position conflicts with color channel. No cdef box will be created.\n");
            alpha_count = 0U;
        }
    } else if (alpha_count > 1) {
        opj_event_msg(p_manager, EVT_WARNING,
                      "Multiple alpha channels specified. No cdef box will be created.\n");
    }
    if (alpha_count == 1U) {
        jp2->color.jp2_cdef = (opj_jp2_cdef_t*)opj_malloc(sizeof(opj_jp2_cdef_t));
        if (!jp2->color.jp2_cdef) {
            opj_event_msg(p_manager, EVT_ERROR,
                          "Not enough memory to setup the JP2 encoder\n");
            return OPJ_FALSE;
        }


        jp2->color.jp2_cdef->info = (opj_jp2_cdef_info_t*) opj_malloc(
                                        image->numcomps * sizeof(opj_jp2_cdef_info_t));
        if (!jp2->color.jp2_cdef->info) {

            opj_event_msg(p_manager, EVT_ERROR,
                          "Not enough memory to setup the JP2 encoder\n");
            return OPJ_FALSE;
        }
        jp2->color.jp2_cdef->n = (OPJ_UINT16)
                                 image->numcomps;
        for (i = 0U; i < color_channels; i++) {
            jp2->color.jp2_cdef->info[i].cn = (OPJ_UINT16)
                                              i;
            jp2->color.jp2_cdef->info[i].typ = 0U;
            jp2->color.jp2_cdef->info[i].asoc = (OPJ_UINT16)(i +
                                                1U);
        }
        for (; i < image->numcomps; i++) {
            if (image->comps[i].alpha != 0) {
                jp2->color.jp2_cdef->info[i].cn = (OPJ_UINT16)
                                                  i;
                jp2->color.jp2_cdef->info[i].typ = 1U;
                jp2->color.jp2_cdef->info[i].asoc =
                    0U;
            } else {

                jp2->color.jp2_cdef->info[i].cn = (OPJ_UINT16)
                                                  i;
                jp2->color.jp2_cdef->info[i].typ = 65535U;
                jp2->color.jp2_cdef->info[i].asoc = 65535U;
            }
        }
    }

    jp2->precedence = 0;
    jp2->approx = 0;

    jp2->jpip_on = parameters->jpip_on;

    return OPJ_TRUE;
}
