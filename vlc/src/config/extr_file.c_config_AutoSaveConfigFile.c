
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int assert (int *) ;
 int config_SaveConfigFile (int *) ;
 int config_dirty ;
 int config_lock ;
 int vlc_rwlock_rdlock (int *) ;
 int vlc_rwlock_unlock (int *) ;

int config_AutoSaveConfigFile( vlc_object_t *p_this )
{
    int ret = 0;

    assert( p_this );

    vlc_rwlock_rdlock (&config_lock);
    if (config_dirty)
    {

        ret = config_SaveConfigFile (p_this);
        config_dirty = (ret != 0);
    }
    vlc_rwlock_unlock (&config_lock);

    return ret;
}
