
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
typedef int i64 ;
struct TYPE_6__ {int (* xWrite ) (TYPE_2__*,void const*,int,int ) ;} ;


 int DO_OS_MALLOC_TEST (TYPE_2__*) ;
 int stub1 (TYPE_2__*,void const*,int,int ) ;

int sqlite3OsWrite(sqlite3_file *id, const void *pBuf, int amt, i64 offset){
  DO_OS_MALLOC_TEST(id);
  return id->pMethods->xWrite(id, pBuf, amt, offset);
}
