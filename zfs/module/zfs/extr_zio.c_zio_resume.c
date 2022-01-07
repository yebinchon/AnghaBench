
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_3__ {int spa_suspend_lock; int * spa_suspend_zio_root; int spa_suspend_cv; int spa_suspended; } ;
typedef TYPE_1__ spa_t ;


 int ZIO_SUSPEND_NONE ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zio_reexecute (int *) ;
 int zio_wait (int *) ;

int
zio_resume(spa_t *spa)
{
 zio_t *pio;




 mutex_enter(&spa->spa_suspend_lock);
 spa->spa_suspended = ZIO_SUSPEND_NONE;
 cv_broadcast(&spa->spa_suspend_cv);
 pio = spa->spa_suspend_zio_root;
 spa->spa_suspend_zio_root = ((void*)0);
 mutex_exit(&spa->spa_suspend_lock);

 if (pio == ((void*)0))
  return (0);

 zio_reexecute(pio);
 return (zio_wait(pio));
}
