
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pVNetRoot; } ;
struct TYPE_6__ {int pNetRoot; int OpenCount; } ;
struct TYPE_5__ {TYPE_3__* pFcb; TYPE_4__* pRelevantSrvOpen; int pFobx; } ;
typedef TYPE_1__* PRX_CONTEXT ;


 int DbgP (char*,int ,TYPE_3__*,TYPE_4__*,int ,int ,int ) ;

void print_fo_all(int on, PRX_CONTEXT c)
{
    if (!on) return;
    if (c->pFcb && c->pRelevantSrvOpen)
        DbgP("OpenCount %d FCB %p SRV %p FOBX %p VNET %p NET %p\n",
            c->pFcb->OpenCount, c->pFcb, c->pRelevantSrvOpen, c->pFobx,
            c->pRelevantSrvOpen->pVNetRoot, c->pFcb->pNetRoot);
}
