
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_data {int lock; int wait; int timer; int count; } ;


 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_timer_getoverrun (int ) ;

__attribute__((used)) static void callback (void *ptr)
{
    struct timer_data *data = ptr;

    vlc_mutex_lock (&data->lock);
    data->count += 1 + vlc_timer_getoverrun (data->timer);
    vlc_cond_signal (&data->wait);
    vlc_mutex_unlock (&data->lock);
}
