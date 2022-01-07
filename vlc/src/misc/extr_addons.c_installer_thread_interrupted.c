
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_priv; } ;
typedef TYPE_3__ addons_manager_t ;
struct TYPE_5__ {int b_live; int lock; int waitcond; } ;
struct TYPE_4__ {TYPE_2__ installer; } ;


 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void installer_thread_interrupted( void* p_data )
{
    addons_manager_t *p_manager = p_data;
    vlc_mutex_lock( &p_manager->p_priv->installer.lock );
    p_manager->p_priv->installer.b_live = 0;
    vlc_cond_signal( &p_manager->p_priv->installer.waitcond );
    vlc_mutex_unlock( &p_manager->p_priv->installer.lock );
}
