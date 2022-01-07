
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_uint64 ;
struct TYPE_3__ {int (* xSize ) (void*) ;} ;
struct TYPE_4__ {TYPE_1__ m; } ;


 scalar_t__ MEMTYPE_HEAP ;
 int assert (int ) ;
 TYPE_2__ sqlite3GlobalConfig ;
 int sqlite3MemdebugHasType (void*,scalar_t__) ;
 int sqlite3MemdebugNoType (void*,int ) ;
 int stub1 (void*) ;

sqlite3_uint64 sqlite3_msize(void *p){
  assert( sqlite3MemdebugNoType(p, (u8)~MEMTYPE_HEAP) );
  assert( sqlite3MemdebugHasType(p, MEMTYPE_HEAP) );
  return p ? sqlite3GlobalConfig.m.xSize(p) : 0;
}
