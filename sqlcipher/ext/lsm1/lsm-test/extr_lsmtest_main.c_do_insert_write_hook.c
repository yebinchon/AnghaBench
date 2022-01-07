
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_3__ {scalar_t__ nData; int bLog; scalar_t__ iOff; int pOut; } ;
typedef TYPE_1__ InsertWriteHook ;


 int flushHook (TYPE_1__*) ;
 int fprintf (int ,char*,char*) ;

__attribute__((used)) static void do_insert_write_hook(
  void *pCtx,
  int bLog,
  i64 iOff,
  int nData,
  int nUs
){
  InsertWriteHook *pHook = (InsertWriteHook *)pCtx;
  if( bLog ) return;

  if( nData==0 ){
    flushHook(pHook);
    fprintf(pHook->pOut, "sync %s\n", (bLog ? "log" : "db"));
  }else if( pHook->nData
         && bLog==pHook->bLog
         && iOff==(pHook->iOff+pHook->nData)
  ){
    pHook->nData += nData;
  }else{
    flushHook(pHook);
    pHook->bLog = bLog;
    pHook->iOff = iOff;
    pHook->nData = nData;
  }
}
