
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {double margin_ratio; int p_default_style; int region; } ;
typedef TYPE_1__ subtext_updater_sys_t ;
struct TYPE_7__ {TYPE_1__* p_sys; int pf_destroy; int pf_update; int pf_validate; } ;
typedef TYPE_2__ subpicture_updater_t ;
typedef int subpicture_t ;
typedef int decoder_t ;


 int STYLE_NO_DEFAULTS ;
 int SubpictureTextDestroy ;
 int SubpictureTextUpdate ;
 int SubpictureTextValidate ;
 int SubpictureUpdaterSysRegionInit (int *) ;
 TYPE_1__* calloc (int,int) ;
 int * decoder_NewSubpicture (int *,TYPE_2__*) ;
 int free (TYPE_1__*) ;
 int text_style_Create (int ) ;
 int text_style_Delete (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline subpicture_t *decoder_NewSubpictureText(decoder_t *decoder)
{
    subtext_updater_sys_t *sys = calloc(1, sizeof(*sys));
    subpicture_updater_t updater = {
        .pf_validate = SubpictureTextValidate,
        .pf_update = SubpictureTextUpdate,
        .pf_destroy = SubpictureTextDestroy,
        .p_sys = sys,
    };
    SubpictureUpdaterSysRegionInit( &sys->region );
    sys->margin_ratio = 0.04;
    sys->p_default_style = text_style_Create( STYLE_NO_DEFAULTS );
    if(unlikely(!sys->p_default_style))
    {
        free(sys);
        return ((void*)0);
    }
    subpicture_t *subpic = decoder_NewSubpicture(decoder, &updater);
    if (!subpic)
    {
        text_style_Delete(sys->p_default_style);
        free(sys);
    }
    return subpic;
}
