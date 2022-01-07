
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;
struct libvlc_event_t {int dummy; } ;


 int vlc_sem_post (int *) ;

__attribute__((used)) static void on_event(const struct libvlc_event_t *event, void *data)
{
    (void) event;
    vlc_sem_t *sem = data;
    vlc_sem_post(sem);
}
