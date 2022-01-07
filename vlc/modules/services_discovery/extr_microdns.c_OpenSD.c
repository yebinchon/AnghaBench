
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct discovery_sys {int dummy; } ;
struct TYPE_3__ {int p_cfg; int description; struct discovery_sys* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;


 int CFG_PREFIX ;
 int OpenCommon (int *,struct discovery_sys*,int) ;
 int VLC_ENOMEM ;
 int _ (char*) ;
 struct discovery_sys* calloc (int,int) ;
 int config_ChainParse (TYPE_1__*,int ,int ,int ) ;
 int ppsz_options ;

__attribute__((used)) static int
OpenSD( vlc_object_t *p_obj )
{
    services_discovery_t *p_sd = (services_discovery_t *)p_obj;

    struct discovery_sys *p_sys = calloc( 1, sizeof(struct discovery_sys) );
    if( !p_sys )
        return VLC_ENOMEM;
    p_sd->p_sys = p_sys;

    p_sd->description = _("mDNS Network Discovery");
    config_ChainParse( p_sd, CFG_PREFIX, ppsz_options, p_sd->p_cfg );

    return OpenCommon( p_obj, p_sys, 0 );
}
