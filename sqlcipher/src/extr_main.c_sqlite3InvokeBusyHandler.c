
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_3__ {int (* xBusyHandler ) (void*,int) ;scalar_t__ nBusy; void* pBusyArg; scalar_t__ bExtraFileArg; } ;
typedef TYPE_1__ BusyHandler ;


 int stub1 (void*,int) ;

int sqlite3InvokeBusyHandler(BusyHandler *p, sqlite3_file *pFile){
  int rc;
  if( p->xBusyHandler==0 || p->nBusy<0 ) return 0;
  if( p->bExtraFileArg ){


    int (*xTra)(void*,int,sqlite3_file*);
    xTra = (int(*)(void*,int,sqlite3_file*))p->xBusyHandler;
    rc = xTra(p->pBusyArg, p->nBusy, pFile);
  }else{

    rc = p->xBusyHandler(p->pBusyArg, p->nBusy);
  }
  if( rc==0 ){
    p->nBusy = -1;
  }else{
    p->nBusy++;
  }
  return rc;
}
