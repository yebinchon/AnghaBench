
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zthr_t ;
struct TYPE_3__ {scalar_t__ syncing; scalar_t__ cancelled; int * ds; } ;
struct TYPE_4__ {TYPE_1__ spa_to_condense; } ;
typedef TYPE_2__ spa_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;

__attribute__((used)) static boolean_t
spa_livelist_condense_cb_check(void *arg, zthr_t *z)
{
 spa_t *spa = arg;
 if ((spa->spa_to_condense.ds != ((void*)0)) &&
     (spa->spa_to_condense.syncing == B_FALSE) &&
     (spa->spa_to_condense.cancelled == B_FALSE)) {
  return (B_TRUE);
 }
 return (B_FALSE);
}
