
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zs_space; int zs_alloc; } ;
typedef TYPE_1__ ztest_shared_t ;


 int B_FALSE ;
 int SIGKILL ;
 int getpid () ;
 int kill (int ,int ) ;
 int metaslab_class_get_alloc (int ) ;
 int metaslab_class_get_space (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_namespace_lock ;
 int spa_normal_class (int ) ;
 int spa_write_cachefile (int ,int ,int ) ;
 int ztest_spa ;

__attribute__((used)) static void
ztest_kill(ztest_shared_t *zs)
{
 zs->zs_alloc = metaslab_class_get_alloc(spa_normal_class(ztest_spa));
 zs->zs_space = metaslab_class_get_space(spa_normal_class(ztest_spa));





 mutex_enter(&spa_namespace_lock);
 spa_write_cachefile(ztest_spa, B_FALSE, B_FALSE);
 mutex_exit(&spa_namespace_lock);

 (void) kill(getpid(), SIGKILL);
}
