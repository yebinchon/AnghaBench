
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlm_t ;
typedef int vlm_media_t ;
struct TYPE_3__ {int cfg; } ;
typedef TYPE_1__ vlm_media_sys_t ;
typedef int int64_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 TYPE_1__* vlm_ControlMediaGetById (int *,int ) ;
 int * vlm_media_Duplicate (int *) ;

__attribute__((used)) static int vlm_ControlMediaGet( vlm_t *p_vlm, int64_t id, vlm_media_t **pp_dsc )
{
    vlm_media_sys_t *p_media = vlm_ControlMediaGetById( p_vlm, id );
    if( !p_media )
        return VLC_EGENERIC;

    *pp_dsc = vlm_media_Duplicate( &p_media->cfg );
    return VLC_SUCCESS;
}
