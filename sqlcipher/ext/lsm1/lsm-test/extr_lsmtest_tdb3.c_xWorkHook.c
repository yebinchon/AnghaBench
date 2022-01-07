
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lsm_db ;
struct TYPE_2__ {int pWorkCtx; int (* xWork ) (int *,int ) ;} ;
typedef TYPE_1__ LsmDb ;


 int stub1 (int *,int ) ;

__attribute__((used)) static void xWorkHook(lsm_db *db, void *pArg){
  LsmDb *p = (LsmDb *)pArg;
  if( p->xWork ) p->xWork(db, p->pWorkCtx);
}
