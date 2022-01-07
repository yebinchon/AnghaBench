
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_priv; } ;
typedef TYPE_3__ addons_manager_t ;
struct TYPE_6__ {int b_live; int waitcond; int lock; int thread; int uris; } ;
struct TYPE_7__ {TYPE_1__ finder; int p_parent; } ;


 int ARRAY_APPEND (int ,int ) ;
 int FinderThread ;
 int VLC_THREAD_PRIORITY_LOW ;
 int msg_Err (int ,char*) ;
 int strdup (char const*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_3__*,int ) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void addons_manager_Gather( addons_manager_t *p_manager, const char *psz_uri )
{
    if ( !psz_uri )
        return;

    vlc_mutex_lock( &p_manager->p_priv->finder.lock );

    ARRAY_APPEND( p_manager->p_priv->finder.uris, strdup( psz_uri ) );

    if( !p_manager->p_priv->finder.b_live )
    {
        if( vlc_clone( &p_manager->p_priv->finder.thread, FinderThread, p_manager,
                       VLC_THREAD_PRIORITY_LOW ) )
        {
            msg_Err( p_manager->p_priv->p_parent,
                     "cannot spawn entries provider thread" );
            vlc_mutex_unlock( &p_manager->p_priv->finder.lock );
            return;
        }
        p_manager->p_priv->finder.b_live = 1;
    }

    vlc_mutex_unlock( &p_manager->p_priv->finder.lock );
    vlc_cond_signal( &p_manager->p_priv->finder.waitcond );
}
