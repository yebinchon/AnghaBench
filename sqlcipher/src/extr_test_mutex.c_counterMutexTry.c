
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t eType; int pReal; } ;
typedef TYPE_2__ sqlite3_mutex ;
struct TYPE_5__ {int (* xMutexTry ) (int ) ;} ;
struct TYPE_7__ {int isInit; TYPE_1__ m; scalar_t__ disableTry; int * aCounter; } ;


 size_t MAX_MUTEXES ;
 int SQLITE_BUSY ;
 int assert (int) ;
 TYPE_3__ g ;
 int stub1 (int ) ;

__attribute__((used)) static int counterMutexTry(sqlite3_mutex *p){
  assert( g.isInit );
  assert( p->eType>=0 );
  assert( p->eType<MAX_MUTEXES );
  g.aCounter[p->eType]++;
  if( g.disableTry ) return SQLITE_BUSY;
  return g.m.xMutexTry(p->pReal);
}
