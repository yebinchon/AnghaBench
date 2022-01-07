
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* jp2_cdef; } ;
typedef TYPE_1__ opj_jp2_color_t ;
struct TYPE_11__ {size_t n; size_t asoc; size_t cn; scalar_t__ typ; struct TYPE_11__* info; } ;
typedef TYPE_2__ opj_jp2_cdef_info_t ;
struct TYPE_12__ {size_t numcomps; TYPE_4__* comps; } ;
typedef TYPE_3__ opj_image_t ;
struct TYPE_13__ {scalar_t__ alpha; } ;
typedef TYPE_4__ opj_image_comp_t ;
typedef int opj_event_mgr_t ;
typedef size_t OPJ_UINT16 ;


 int EVT_WARNING ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 int opj_event_msg (int *,int ,char*,size_t,size_t) ;
 int opj_free (TYPE_2__*) ;

__attribute__((used)) static void opj_jp2_apply_cdef(opj_image_t *image, opj_jp2_color_t *color,
                               opj_event_mgr_t *manager)
{
    opj_jp2_cdef_info_t *info;
    OPJ_UINT16 i, n, cn, asoc, acn;

    info = color->jp2_cdef->info;
    n = color->jp2_cdef->n;

    for (i = 0; i < n; ++i) {

        asoc = info[i].asoc;
        cn = info[i].cn;

        if (cn >= image->numcomps) {
            opj_event_msg(manager, EVT_WARNING, "opj_jp2_apply_cdef: cn=%d, numcomps=%d\n",
                          cn, image->numcomps);
            continue;
        }
        if (asoc == 0 || asoc == 65535) {
            image->comps[cn].alpha = info[i].typ;
            continue;
        }

        acn = (OPJ_UINT16)(asoc - 1);
        if (acn >= image->numcomps) {
            opj_event_msg(manager, EVT_WARNING, "opj_jp2_apply_cdef: acn=%d, numcomps=%d\n",
                          acn, image->numcomps);
            continue;
        }


        if ((cn != acn) && (info[i].typ == 0)) {
            opj_image_comp_t saved;
            OPJ_UINT16 j;

            memcpy(&saved, &image->comps[cn], sizeof(opj_image_comp_t));
            memcpy(&image->comps[cn], &image->comps[acn], sizeof(opj_image_comp_t));
            memcpy(&image->comps[acn], &saved, sizeof(opj_image_comp_t));


            for (j = (OPJ_UINT16)(i + 1U); j < n ; ++j) {
                if (info[j].cn == cn) {
                    info[j].cn = acn;
                } else if (info[j].cn == acn) {
                    info[j].cn = cn;
                }

            }
        }

        image->comps[cn].alpha = info[i].typ;
    }

    if (color->jp2_cdef->info) {
        opj_free(color->jp2_cdef->info);
    }

    opj_free(color->jp2_cdef);
    color->jp2_cdef = ((void*)0);

}
