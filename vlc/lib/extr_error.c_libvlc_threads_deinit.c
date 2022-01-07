
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int context ;
 int free_error () ;
 int lock ;
 scalar_t__ refs ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_threadvar_delete (int *) ;

void libvlc_threads_deinit (void)
{
    vlc_mutex_lock (&lock);
    assert (refs > 0);
    if (--refs == 0)
    {
        free_error ();
        vlc_threadvar_delete (&context);
    }
    vlc_mutex_unlock (&lock);
}
