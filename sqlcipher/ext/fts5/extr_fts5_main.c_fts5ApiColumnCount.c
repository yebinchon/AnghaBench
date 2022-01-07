
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pVtab; } ;
struct TYPE_8__ {TYPE_2__ base; } ;
struct TYPE_7__ {TYPE_1__* pConfig; } ;
struct TYPE_5__ {int nCol; } ;
typedef TYPE_3__ Fts5Table ;
typedef TYPE_4__ Fts5Cursor ;
typedef int Fts5Context ;



__attribute__((used)) static int fts5ApiColumnCount(Fts5Context *pCtx){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  return ((Fts5Table*)(pCsr->base.pVtab))->pConfig->nCol;
}
