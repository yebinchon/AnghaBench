
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {void (* xWriteHook ) (void*,int,lsm_i64,int,int) ;void* pWriteCtx; } ;
typedef TYPE_1__ LsmDb ;


 scalar_t__ tdb_lsm (int *) ;

void tdb_lsm_write_hook(
  TestDb *pDb,
  void (*xWrite)(void *, int, lsm_i64, int, int),
  void *pWriteCtx
){
  if( tdb_lsm(pDb) ){
    LsmDb *p = (LsmDb *)pDb;
    p->xWriteHook = xWrite;
    p->pWriteCtx = pWriteCtx;
  }
}
