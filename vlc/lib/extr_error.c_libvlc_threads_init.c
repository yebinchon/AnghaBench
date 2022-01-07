
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int context ;
 int free_msg ;
 int lock ;
 int refs ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_threadvar_create (int *,int ) ;

void libvlc_threads_init (void)
{
    vlc_mutex_lock (&lock);
    if (refs++ == 0)
        vlc_threadvar_create (&context, free_msg);
    vlc_mutex_unlock (&lock);
}
