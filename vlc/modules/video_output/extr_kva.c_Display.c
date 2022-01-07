
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int client; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int picture_t ;


 int VLC_UNUSED (int *) ;
 int WM_VLC_MANAGE ;
 int WinPostMsg (int ,int ,int ,int ) ;

__attribute__((used)) static void Display( vout_display_t *vd, picture_t *picture )
{
    vout_display_sys_t * sys = vd->sys;

    VLC_UNUSED( picture );




    WinPostMsg( sys->client, WM_VLC_MANAGE, 0, 0 );
}
