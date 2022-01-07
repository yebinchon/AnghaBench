
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int read_fd; int write_fd; int wait; int lock; scalar_t__ pid; int thread; } ;
typedef TYPE_2__ stream_sys_t ;


 int free (TYPE_2__*) ;
 int msg_Dbg (int *,char*,int) ;
 int vlc_cancel (int ) ;
 int vlc_close (int) ;
 int vlc_cond_destroy (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    stream_sys_t *p_sys = stream->p_sys;
    int status;

    vlc_cancel (p_sys->thread);
    vlc_close (p_sys->read_fd);
    vlc_join (p_sys->thread, ((void*)0));
    if (p_sys->write_fd != -1)

        vlc_close (p_sys->write_fd);

    msg_Dbg (obj, "waiting for PID %u", (unsigned)p_sys->pid);
    while (waitpid (p_sys->pid, &status, 0) == -1);
    msg_Dbg (obj, "exit status %d", status);

    vlc_mutex_destroy (&p_sys->lock);
    vlc_cond_destroy (&p_sys->wait);
    free (p_sys);
}
