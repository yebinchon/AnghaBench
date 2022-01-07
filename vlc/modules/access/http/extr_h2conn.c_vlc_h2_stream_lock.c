
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_h2_stream {int interrupted; TYPE_1__* conn; } ;
struct TYPE_2__ {int lock; } ;


 int vlc_h2_stream_wake_up ;
 int vlc_interrupt_register (int ,struct vlc_h2_stream*) ;
 int vlc_mutex_lock (int *) ;

__attribute__((used)) static void vlc_h2_stream_lock(struct vlc_h2_stream *s)
{
    s->interrupted = 0;


    vlc_interrupt_register(vlc_h2_stream_wake_up, s);
    vlc_mutex_lock(&s->conn->lock);
}
