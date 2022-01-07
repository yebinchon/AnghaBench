
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_6__ {int cv; int dp; scalar_t__ dither; int * fifo; int thread; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int FreeConsole () ;
 int block_FifoRelease (int *) ;
 int caca_free_display (int ) ;
 int cucul_free_canvas (int ) ;
 int cucul_free_dither (scalar_t__) ;
 int free (TYPE_2__*) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->fifo != ((void*)0)) {
        vlc_cancel(sys->thread);
        vlc_join(sys->thread, ((void*)0));
        block_FifoRelease(sys->fifo);
    }
    if (sys->dither)
        cucul_free_dither(sys->dither);
    caca_free_display(sys->dp);
    cucul_free_canvas(sys->cv);





    free(sys);
}
