
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_cfg; struct discovery_sys* p_sys; } ;
typedef TYPE_1__ vlc_renderer_discovery_t ;
typedef int vlc_object_t ;
struct discovery_sys {int dummy; } ;


 int CFG_PREFIX ;
 int OpenCommon (int *,struct discovery_sys*,int) ;
 int VLC_ENOMEM ;
 struct discovery_sys* calloc (int,int) ;
 int config_ChainParse (TYPE_1__*,int ,int ,int ) ;
 int ppsz_options ;

__attribute__((used)) static int
OpenRD( vlc_object_t *p_obj )
{
    vlc_renderer_discovery_t *p_rd = (vlc_renderer_discovery_t *)p_obj;

    struct discovery_sys *p_sys = calloc( 1, sizeof(struct discovery_sys) );
    if( !p_sys )
        return VLC_ENOMEM;
    p_rd->p_sys = p_sys;

    config_ChainParse( p_rd, CFG_PREFIX, ppsz_options, p_rd->p_cfg );

    return OpenCommon( p_obj, p_sys, 1 );
}
