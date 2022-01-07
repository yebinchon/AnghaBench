
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_7__ {int ms_lock; TYPE_1__* ms_group; } ;
typedef TYPE_2__ metaslab_t ;
struct TYPE_8__ {int * mc_spa; } ;
typedef TYPE_3__ metaslab_class_t ;
typedef int fstrans_cookie_t ;
struct TYPE_6__ {int mg_lock; TYPE_3__* mg_class; } ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int metaslab_load (TYPE_2__*) ;
 int metaslab_set_selected_txg (TYPE_2__*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_syncing_txg (int *) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;

__attribute__((used)) static void
metaslab_preload(void *arg)
{
 metaslab_t *msp = arg;
 metaslab_class_t *mc = msp->ms_group->mg_class;
 spa_t *spa = mc->mc_spa;
 fstrans_cookie_t cookie = spl_fstrans_mark();

 ASSERT(!MUTEX_HELD(&msp->ms_group->mg_lock));

 mutex_enter(&msp->ms_lock);
 (void) metaslab_load(msp);
 metaslab_set_selected_txg(msp, spa_syncing_txg(spa));
 mutex_exit(&msp->ms_lock);
 spl_fstrans_unmark(cookie);
}
