
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct TYPE_21__ {int media; int i_media; TYPE_15__* p_vod; } ;
typedef TYPE_4__ vlm_t ;
struct TYPE_20__ {int logger; } ;
struct TYPE_19__ {scalar_t__ p_media; int p_item; } ;
struct TYPE_23__ {int b_enabled; int psz_name; scalar_t__ b_vod; } ;
struct TYPE_22__ {scalar_t__ i_instance; TYPE_3__ obj; TYPE_2__ vod; TYPE_6__ cfg; TYPE_1__** instance; } ;
typedef TYPE_5__ vlm_media_sys_t ;
typedef int int64_t ;
struct TYPE_18__ {int psz_name; } ;
struct TYPE_17__ {int (* pf_media_del ) (TYPE_15__*,scalar_t__) ;} ;


 int TAB_REMOVE (int ,int ,TYPE_5__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLM_STOP_MEDIA_INSTANCE ;
 int input_item_Release (int ) ;
 int stub1 (TYPE_15__*,scalar_t__) ;
 int vlc_LogDestroy (int ) ;
 int vlc_object_delete (TYPE_5__*) ;
 int vlm_ControlInternal (TYPE_4__*,int ,int ,int ) ;
 TYPE_5__* vlm_ControlMediaGetById (TYPE_4__*,int ) ;
 int vlm_OnMediaUpdate (TYPE_4__*,TYPE_5__*) ;
 int vlm_SendEventMediaRemoved (TYPE_4__*,int ,int ) ;
 int vlm_media_Clean (TYPE_6__*) ;

__attribute__((used)) static int vlm_ControlMediaDel( vlm_t *p_vlm, int64_t id )
{
    vlm_media_sys_t *p_media = vlm_ControlMediaGetById( p_vlm, id );

    if( !p_media )
        return VLC_EGENERIC;

    while( p_media->i_instance > 0 )
        vlm_ControlInternal( p_vlm, VLM_STOP_MEDIA_INSTANCE, id, p_media->instance[0]->psz_name );

    if( p_media->cfg.b_vod )
    {
        p_media->cfg.b_enabled = 0;
        vlm_OnMediaUpdate( p_vlm, p_media );
    }


    vlm_SendEventMediaRemoved( p_vlm, id, p_media->cfg.psz_name );

    vlm_media_Clean( &p_media->cfg );

    input_item_Release( p_media->vod.p_item );

    if( p_media->vod.p_media )
        p_vlm->p_vod->pf_media_del( p_vlm->p_vod, p_media->vod.p_media );

    TAB_REMOVE( p_vlm->i_media, p_vlm->media, p_media );
    vlc_LogDestroy( p_media->obj.logger );
    vlc_object_delete(p_media);

    return VLC_SUCCESS;
}
