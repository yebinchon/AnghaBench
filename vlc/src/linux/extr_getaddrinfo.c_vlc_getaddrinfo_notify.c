
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sigval {int sival_ptr; } ;


 int vlc_sem_post (int ) ;

__attribute__((used)) static void vlc_getaddrinfo_notify(union sigval val)
{
    vlc_sem_post(val.sival_ptr);
}
