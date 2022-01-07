
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* xLog ) (void*,int,char const*) ;void* pLogCtx; } ;
typedef TYPE_1__ lsm_db ;



void lsm_config_log(
  lsm_db *pDb,
  void (*xLog)(void *, int, const char *),
  void *pCtx
){
  pDb->xLog = xLog;
  pDb->pLogCtx = pCtx;
}
