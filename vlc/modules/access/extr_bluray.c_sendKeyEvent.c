
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bluray; } ;
typedef TYPE_1__ demux_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ bd_user_input (int ,int,unsigned int) ;

__attribute__((used)) static int sendKeyEvent(demux_sys_t *p_sys, unsigned int key)
{
    if (bd_user_input(p_sys->bluray, -1, key) < 0)
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}
