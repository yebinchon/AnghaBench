
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* data; } ;
typedef TYPE_1__ vlc_interrupt_t ;


 int vlc_close (int) ;
 int vlc_interrupt_finish (TYPE_1__*) ;

__attribute__((used)) static void vlc_poll_i11e_cleanup(void *opaque)
{
    vlc_interrupt_t *ctx = opaque;
    int *fd = ctx->data;

    vlc_interrupt_finish(ctx);
    if (fd[1] != fd[0])
        vlc_close(fd[1]);
    vlc_close(fd[0]);
}
