
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_thread_t ;


 int vlc_clone_attr (int *,int,void* (*) (void*),void*,int) ;

int vlc_clone_detach (vlc_thread_t *p_handle, void *(*entry) (void *),
                      void *data, int priority)
{
    vlc_thread_t th;
    if (p_handle == ((void*)0))
        p_handle = &th;

    return vlc_clone_attr (p_handle, 1, entry, data, priority);
}
