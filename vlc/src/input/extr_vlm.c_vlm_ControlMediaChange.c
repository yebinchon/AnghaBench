
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlm_t ;
struct TYPE_10__ {scalar_t__ b_vod; int id; } ;
typedef TYPE_1__ vlm_media_t ;
struct TYPE_12__ {scalar_t__ b_vod; } ;
struct TYPE_11__ {TYPE_3__ cfg; } ;
typedef TYPE_2__ vlm_media_sys_t ;


 int VLC_EGENERIC ;
 TYPE_2__* vlm_ControlMediaGetById (int *,int ) ;
 scalar_t__ vlm_MediaDescriptionCheck (int *,TYPE_1__*) ;
 int vlm_OnMediaUpdate (int *,TYPE_2__*) ;
 int vlm_media_Clean (TYPE_3__*) ;
 int vlm_media_Copy (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static int vlm_ControlMediaChange( vlm_t *p_vlm, vlm_media_t *p_cfg )
{
    vlm_media_sys_t *p_media = vlm_ControlMediaGetById( p_vlm, p_cfg->id );


    if( !p_media || vlm_MediaDescriptionCheck( p_vlm, p_cfg ) )
        return VLC_EGENERIC;
    if( ( p_media->cfg.b_vod && !p_cfg->b_vod ) || ( !p_media->cfg.b_vod && p_cfg->b_vod ) )
        return VLC_EGENERIC;

    if( 0 )
    {

    }

    vlm_media_Clean( &p_media->cfg );
    vlm_media_Copy( &p_media->cfg, p_cfg );

    return vlm_OnMediaUpdate( p_vlm, p_media );
}
