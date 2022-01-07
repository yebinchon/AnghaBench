
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xSize ) (void*) ;} ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int MEMTYPE_HEAP ;
 int assert (int ) ;
 TYPE_2__ sqlite3GlobalConfig ;
 int sqlite3MemdebugHasType (void*,int ) ;
 int stub1 (void*) ;

int sqlite3MallocSize(void *p){
  assert( sqlite3MemdebugHasType(p, MEMTYPE_HEAP) );
  return sqlite3GlobalConfig.m.xSize(p);
}
