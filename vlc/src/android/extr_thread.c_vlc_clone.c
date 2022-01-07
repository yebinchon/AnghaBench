
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_thread_t ;


 int vlc_clone_attr (int *,void* (*) (void*),void*,int) ;

int vlc_clone (vlc_thread_t *th, void *(*entry) (void *), void *data,
               int priority)
{
    (void) priority;
    return vlc_clone_attr (th, entry, data, 0);
}
