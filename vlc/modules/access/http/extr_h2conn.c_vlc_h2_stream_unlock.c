
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_h2_stream {TYPE_1__* conn; } ;
struct TYPE_2__ {int lock; } ;


 int vlc_interrupt_unregister () ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlc_h2_stream_unlock(struct vlc_h2_stream *s)
{
    vlc_mutex_unlock(&s->conn->lock);
    return vlc_interrupt_unregister();
}
