
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* p_sys; } ;
struct TYPE_7__ {TYPE_1__ updater; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_8__ {struct TYPE_8__* art; scalar_t__ epg; } ;
typedef TYPE_3__ epg_spu_updater_sys_t ;


 int free (TYPE_3__*) ;
 int vlc_epg_Delete (scalar_t__) ;

__attribute__((used)) static void OSDEpgDestroy(subpicture_t *subpic)
{
    epg_spu_updater_sys_t *sys = subpic->updater.p_sys;
    if( sys->epg )
        vlc_epg_Delete(sys->epg);
    free( sys->art );
    free(sys);
}
