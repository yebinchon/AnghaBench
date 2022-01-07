
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pReal; } ;
typedef TYPE_2__ sqlite3_mutex ;
struct TYPE_5__ {int (* xMutexLeave ) (int ) ;} ;
struct TYPE_7__ {TYPE_1__ m; int isInit; } ;


 int assert (int ) ;
 TYPE_3__ g ;
 int stub1 (int ) ;

__attribute__((used)) static void counterMutexLeave(sqlite3_mutex *p){
  assert( g.isInit );
  g.m.xMutexLeave(p->pReal);
}
