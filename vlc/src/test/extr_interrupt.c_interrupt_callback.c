
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_sem_post (void*) ;

__attribute__((used)) static void interrupt_callback(void *data)
{
    vlc_sem_post(data);
}
