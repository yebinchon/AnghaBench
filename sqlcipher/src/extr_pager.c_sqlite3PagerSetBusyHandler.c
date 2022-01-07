
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xBusyHandler ) (void*) ;int fd; void* pBusyHandlerArg; } ;
typedef TYPE_1__ Pager ;


 int SQLITE_FCNTL_BUSYHANDLER ;
 int assert (int) ;
 int sqlite3OsFileControlHint (int ,int ,void*) ;

void sqlite3PagerSetBusyHandler(
  Pager *pPager,
  int (*xBusyHandler)(void *),
  void *pBusyHandlerArg
){
  void **ap;
  pPager->xBusyHandler = xBusyHandler;
  pPager->pBusyHandlerArg = pBusyHandlerArg;
  ap = (void **)&pPager->xBusyHandler;
  assert( ((int(*)(void *))(ap[0]))==xBusyHandler );
  assert( ap[1]==pBusyHandlerArg );
  sqlite3OsFileControlHint(pPager->fd, SQLITE_FCNTL_BUSYHANDLER, (void *)ap);
}
