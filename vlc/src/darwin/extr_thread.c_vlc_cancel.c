
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_thread_t ;


 int pthread_cancel (int ) ;

void vlc_cancel (vlc_thread_t thread_id)
{
    pthread_cancel (thread_id);
}
