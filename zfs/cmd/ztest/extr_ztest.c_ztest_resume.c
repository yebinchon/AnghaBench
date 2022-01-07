
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_2__ {int zo_verbose; } ;


 int SCL_NONE ;
 int printf (char*) ;
 scalar_t__ spa_suspended (int *) ;
 int spa_vdev_state_enter (int *,int ) ;
 int spa_vdev_state_exit (int *,int *,int ) ;
 int vdev_clear (int *,int *) ;
 int zio_resume (int *) ;
 TYPE_1__ ztest_opts ;

__attribute__((used)) static void
ztest_resume(spa_t *spa)
{
 if (spa_suspended(spa) && ztest_opts.zo_verbose >= 6)
  (void) printf("resuming from suspended state\n");
 spa_vdev_state_enter(spa, SCL_NONE);
 vdev_clear(spa, ((void*)0));
 (void) spa_vdev_state_exit(spa, ((void*)0), 0);
 (void) zio_resume(spa);
}
