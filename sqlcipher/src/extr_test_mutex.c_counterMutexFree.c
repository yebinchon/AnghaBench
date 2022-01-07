
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ eType; int pReal; } ;
typedef TYPE_2__ sqlite3_mutex ;
struct TYPE_6__ {int (* xMutexFree ) (int ) ;} ;
struct TYPE_8__ {TYPE_1__ m; int isInit; } ;


 scalar_t__ SQLITE_MUTEX_FAST ;
 scalar_t__ SQLITE_MUTEX_RECURSIVE ;
 int assert (int ) ;
 int free (TYPE_2__*) ;
 TYPE_3__ g ;
 int stub1 (int ) ;

__attribute__((used)) static void counterMutexFree(sqlite3_mutex *p){
  assert( g.isInit );
  g.m.xMutexFree(p->pReal);
  if( p->eType==SQLITE_MUTEX_FAST || p->eType==SQLITE_MUTEX_RECURSIVE ){
    free(p);
  }
}
