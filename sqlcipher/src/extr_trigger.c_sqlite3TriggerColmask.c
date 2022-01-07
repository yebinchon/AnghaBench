
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int * aColmask; } ;
typedef TYPE_1__ TriggerPrg ;
struct TYPE_7__ {int const op; int tr_tm; int pColumns; struct TYPE_7__* pNext; } ;
typedef TYPE_2__ Trigger ;
typedef int Table ;
typedef int Parse ;
typedef int ExprList ;


 int TK_DELETE ;
 int TK_UPDATE ;
 int assert (int) ;
 scalar_t__ checkColumnOverlap (int ,int *) ;
 TYPE_1__* getRowTrigger (int *,TYPE_2__*,int *,int) ;

u32 sqlite3TriggerColmask(
  Parse *pParse,
  Trigger *pTrigger,
  ExprList *pChanges,
  int isNew,
  int tr_tm,
  Table *pTab,
  int orconf
){
  const int op = pChanges ? TK_UPDATE : TK_DELETE;
  u32 mask = 0;
  Trigger *p;

  assert( isNew==1 || isNew==0 );
  for(p=pTrigger; p; p=p->pNext){
    if( p->op==op && (tr_tm&p->tr_tm)
     && checkColumnOverlap(p->pColumns,pChanges)
    ){
      TriggerPrg *pPrg;
      pPrg = getRowTrigger(pParse, p, pTab, orconf);
      if( pPrg ){
        mask |= pPrg->aColmask[isNew];
      }
    }
  }

  return mask;
}
