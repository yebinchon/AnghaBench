
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ spa_errlog_scrub; scalar_t__ spa_errlog_last; int spa_errlist_lock; int spa_errlist_scrub; int spa_errlist_last; int spa_errlog_lock; int spa_meta_objset; int spa_scrub_finished; } ;
typedef TYPE_1__ spa_t ;


 scalar_t__ avl_numnodes (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ zap_count (int ,scalar_t__,scalar_t__*) ;

uint64_t
spa_get_errlog_size(spa_t *spa)
{
 uint64_t total = 0, count;

 mutex_enter(&spa->spa_errlog_lock);
 if (spa->spa_errlog_scrub != 0 &&
     zap_count(spa->spa_meta_objset, spa->spa_errlog_scrub,
     &count) == 0)
  total += count;

 if (spa->spa_errlog_last != 0 && !spa->spa_scrub_finished &&
     zap_count(spa->spa_meta_objset, spa->spa_errlog_last,
     &count) == 0)
  total += count;
 mutex_exit(&spa->spa_errlog_lock);

 mutex_enter(&spa->spa_errlist_lock);
 total += avl_numnodes(&spa->spa_errlist_last);
 total += avl_numnodes(&spa->spa_errlist_scrub);
 mutex_exit(&spa->spa_errlist_lock);

 return (total);
}
