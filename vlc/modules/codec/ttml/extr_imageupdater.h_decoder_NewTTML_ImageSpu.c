
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * p_regions; int ** pp_append; } ;
typedef TYPE_1__ ttml_image_updater_sys_t ;
struct TYPE_7__ {TYPE_1__* p_sys; int pf_destroy; int pf_update; int pf_validate; } ;
typedef TYPE_2__ subpicture_updater_t ;
typedef int subpicture_t ;
typedef int decoder_t ;


 int TTML_ImageSpuDestroy ;
 int TTML_ImageSpuUpdate ;
 int TTML_ImageSpuValidate ;
 TYPE_1__* calloc (int,int) ;
 int * decoder_NewSubpicture (int *,TYPE_2__*) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static inline subpicture_t *decoder_NewTTML_ImageSpu(decoder_t *p_dec)
{
    ttml_image_updater_sys_t *p_sys = calloc(1, sizeof(*p_sys));
    if(!p_sys)
        return ((void*)0);
    subpicture_updater_t updater = {
        .pf_validate = TTML_ImageSpuValidate,
        .pf_update = TTML_ImageSpuUpdate,
        .pf_destroy = TTML_ImageSpuDestroy,
        .p_sys = p_sys,
    };
    p_sys->p_regions = ((void*)0);
    p_sys->pp_append = &p_sys->p_regions;
    subpicture_t *p_spu = decoder_NewSubpicture(p_dec, &updater);
    if (!p_spu)
        free(p_sys);
    return p_spu;
}
