
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ i_media; TYPE_2__** media; } ;
typedef TYPE_3__ vlm_t ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_1__ cfg; } ;


 int VLC_SUCCESS ;
 int vlm_ControlMediaDel (TYPE_3__*,int ) ;

__attribute__((used)) static int vlm_ControlMediaClear( vlm_t *p_vlm )
{
    while( p_vlm->i_media > 0 )
        vlm_ControlMediaDel( p_vlm, p_vlm->media[0]->cfg.id );

    return VLC_SUCCESS;
}
