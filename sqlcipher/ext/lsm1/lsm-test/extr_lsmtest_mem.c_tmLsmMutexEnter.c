
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pMutex; } ;
typedef TYPE_2__ TmGlobal ;
struct TYPE_7__ {int pMutex; TYPE_1__* pEnv; } ;
struct TYPE_5__ {int (* xMutexEnter ) (int ) ;} ;
typedef TYPE_3__ LsmMutex ;


 int stub1 (int ) ;

__attribute__((used)) static void tmLsmMutexEnter(TmGlobal *pTm){
  LsmMutex *p = (LsmMutex *)pTm->pMutex;
  p->pEnv->xMutexEnter(p->pMutex);
}
