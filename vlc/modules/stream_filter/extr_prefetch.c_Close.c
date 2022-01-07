
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct stream_ctrl {struct stream_ctrl* content_type; struct stream_ctrl* buffer; struct stream_ctrl* next; struct stream_ctrl* controls; int lock; int wait_data; int wait_space; int interrupt; int thread; } ;
struct TYPE_2__ {struct stream_ctrl* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef struct stream_ctrl stream_sys_t ;


 int free (struct stream_ctrl*) ;
 int vlc_cancel (int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_interrupt_destroy (int ) ;
 int vlc_interrupt_kill (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    stream_sys_t *sys = stream->p_sys;

    vlc_cancel(sys->thread);
    vlc_interrupt_kill(sys->interrupt);
    vlc_join(sys->thread, ((void*)0));
    vlc_interrupt_destroy(sys->interrupt);
    vlc_cond_destroy(&sys->wait_space);
    vlc_cond_destroy(&sys->wait_data);
    vlc_mutex_destroy(&sys->lock);

    while(sys->controls)
    {
        struct stream_ctrl *ctrl = sys->controls;
        sys->controls = ctrl->next;
        free(ctrl);
    }
    free(sys->buffer);
    free(sys->content_type);
    free(sys);
}
