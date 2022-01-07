
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlc_thread_t ;
struct TYPE_3__ {int tid; } ;


 scalar_t__ DosSetPriority (int ,int ,int ,int ) ;
 int HIBYTE (int) ;
 int LOBYTE (int) ;
 int PRTYS_THREAD ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

int vlc_set_priority (vlc_thread_t th, int priority)
{
    if (DosSetPriority(PRTYS_THREAD,
                       HIBYTE(priority),
                       LOBYTE(priority),
                       th->tid))
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
