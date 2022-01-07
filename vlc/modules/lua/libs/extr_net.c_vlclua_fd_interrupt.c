
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interrupt; } ;
typedef TYPE_1__ vlclua_dtable_t ;


 int vlc_interrupt_kill (int ) ;

void vlclua_fd_interrupt( vlclua_dtable_t *dt )
{
    vlc_interrupt_kill( dt->interrupt );
}
