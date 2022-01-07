
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int block_t ;
struct TYPE_5__ {int woken; int fifo; } ;
typedef TYPE_2__ access_sys_t ;


 int * vlc_fifo_DequeueUnlocked (int ) ;
 scalar_t__ vlc_fifo_IsEmpty (int ) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_fifo_Wait (int ) ;

__attribute__((used)) static block_t* satip_block(stream_t *access, bool *restrict eof) {
    access_sys_t *sys = access->p_sys;
    block_t *block;

    vlc_fifo_Lock(sys->fifo);

    while (vlc_fifo_IsEmpty(sys->fifo)) {
        if (sys->woken)
            break;
        vlc_fifo_Wait(sys->fifo);
    }

    if ((block = vlc_fifo_DequeueUnlocked(sys->fifo)) == ((void*)0))
        *eof = 1;
    sys->woken = 0;
    vlc_fifo_Unlock(sys->fifo);

    return block;
}
