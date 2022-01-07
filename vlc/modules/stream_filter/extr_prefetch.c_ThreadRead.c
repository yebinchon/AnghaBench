
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_2__ stream_sys_t ;
typedef int ssize_t ;


 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_stream_ReadPartial (int ,void*,size_t) ;

__attribute__((used)) static ssize_t ThreadRead(stream_t *stream, void *buf, size_t length)
{
    stream_sys_t *sys = stream->p_sys;
    int canc = vlc_savecancel();

    vlc_mutex_unlock(&sys->lock);
    assert(length > 0);

    ssize_t val = vlc_stream_ReadPartial(stream->s, buf, length);

    vlc_mutex_lock(&sys->lock);
    vlc_restorecancel(canc);
    return val;
}
