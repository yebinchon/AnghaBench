
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
typedef int i64 ;
struct TYPE_5__ {int (* xUnfetch ) (TYPE_2__*,int ,void*) ;} ;


 int stub1 (TYPE_2__*,int ,void*) ;

int sqlite3OsUnfetch(sqlite3_file *id, i64 iOff, void *p){
  return id->pMethods->xUnfetch(id, iOff, p);
}
