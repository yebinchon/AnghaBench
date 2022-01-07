
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_6__ {int (* xFileControl ) (TYPE_2__*,int,void*) ;} ;


 int DO_OS_MALLOC_TEST (TYPE_2__*) ;
 int SQLITE_FCNTL_COMMIT_PHASETWO ;
 int SQLITE_FCNTL_LOCK_TIMEOUT ;
 int SQLITE_NOTFOUND ;
 int stub1 (TYPE_2__*,int,void*) ;

int sqlite3OsFileControl(sqlite3_file *id, int op, void *pArg){
  if( id->pMethods==0 ) return SQLITE_NOTFOUND;
  return id->pMethods->xFileControl(id, op, pArg);
}
