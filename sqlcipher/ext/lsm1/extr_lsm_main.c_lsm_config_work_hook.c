
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* xWork ) (TYPE_1__*,void*) ;void* pWorkCtx; } ;
typedef TYPE_1__ lsm_db ;



void lsm_config_work_hook(
  lsm_db *pDb,
  void (*xWork)(lsm_db *, void *),
  void *pCtx
){
  pDb->xWork = xWork;
  pDb->pWorkCtx = pCtx;
}
