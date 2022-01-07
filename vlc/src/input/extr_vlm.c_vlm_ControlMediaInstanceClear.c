
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlm_t ;
struct TYPE_5__ {scalar_t__ i_instance; TYPE_1__** instance; } ;
typedef TYPE_2__ vlm_media_sys_t ;
typedef int int64_t ;
struct TYPE_4__ {int psz_name; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 TYPE_2__* vlm_ControlMediaGetById (int *,int ) ;
 int vlm_ControlMediaInstanceStop (int *,int ,int ) ;

__attribute__((used)) static int vlm_ControlMediaInstanceClear( vlm_t *p_vlm, int64_t id )
{
    vlm_media_sys_t *p_media = vlm_ControlMediaGetById( p_vlm, id );

    if( !p_media )
        return VLC_EGENERIC;

    while( p_media->i_instance > 0 )
        vlm_ControlMediaInstanceStop( p_vlm, id, p_media->instance[0]->psz_name );

    return VLC_SUCCESS;
}
