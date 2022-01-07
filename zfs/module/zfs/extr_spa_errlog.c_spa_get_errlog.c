
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spa_errlog_lock; int spa_errlist_lock; int spa_errlist_last; int spa_errlist_scrub; int spa_errlog_last; int spa_scrub_finished; int spa_errlog_scrub; } ;
typedef TYPE_1__ spa_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int process_error_list (int *,void*,size_t*) ;
 int process_error_log (TYPE_1__*,int ,void*,size_t*) ;

int
spa_get_errlog(spa_t *spa, void *uaddr, size_t *count)
{
 int ret = 0;
 return (ret);
}
