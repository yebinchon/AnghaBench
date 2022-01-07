
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xFree ) (int *) ;scalar_t__ pMutex; } ;
typedef TYPE_1__ TmGlobal ;
typedef int LsmMutex ;


 int stub1 (int *) ;

__attribute__((used)) static void tmLsmMutexDel(TmGlobal *pTm){
  LsmMutex *p = (LsmMutex *)pTm->pMutex;
  pTm->xFree(p);
}
