
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {struct TYPE_5__* p_prev_s16_buff; int fifo; int gl; int thread; } ;
typedef TYPE_2__ filter_sys_t ;


 int block_FifoRelease (int ) ;
 int free (TYPE_2__*) ;
 int vlc_cancel (int ) ;
 int vlc_gl_surface_Destroy (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close(vlc_object_t *p_this)
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;


    vlc_cancel(p_sys->thread);
    vlc_join(p_sys->thread, ((void*)0));


    vlc_gl_surface_Destroy(p_sys->gl);
    block_FifoRelease(p_sys->fifo);
    free(p_sys->p_prev_s16_buff);
    free(p_sys);
}
