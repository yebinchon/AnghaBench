
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int VLC_UNUSED (int *) ;
 int lock ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int xmlCleanupParser () ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{





    VLC_UNUSED(p_this);
    return;
}
