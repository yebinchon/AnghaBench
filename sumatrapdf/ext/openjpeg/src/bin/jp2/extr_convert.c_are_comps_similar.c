
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int numcomps; TYPE_1__* comps; } ;
typedef TYPE_2__ opj_image_t ;
struct TYPE_4__ {scalar_t__ dx; scalar_t__ dy; scalar_t__ prec; scalar_t__ sgnd; } ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;

__attribute__((used)) static int are_comps_similar(opj_image_t * image)
{
    unsigned int i;
    for (i = 1; i < image->numcomps; i++) {
        if (image->comps[0].dx != image->comps[i].dx ||
                image->comps[0].dy != image->comps[i].dy ||
                (i <= 2 &&
                 (image->comps[0].prec != image->comps[i].prec ||
                  image->comps[0].sgnd != image->comps[i].sgnd))) {
            return OPJ_FALSE;
        }
    }
    return OPJ_TRUE;
}
