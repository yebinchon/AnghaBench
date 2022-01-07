
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hevAck; int hev; } ;
typedef TYPE_1__ vlc_cond_t ;


 int DosCloseEventSem (int ) ;

void vlc_cond_destroy (vlc_cond_t *p_condvar)
{
    DosCloseEventSem( p_condvar->hev );
    DosCloseEventSem( p_condvar->hevAck );
}
