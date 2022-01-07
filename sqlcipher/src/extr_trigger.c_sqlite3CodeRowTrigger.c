
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ pSchema; scalar_t__ pTabSchema; int op; int tr_tm; int pColumns; struct TYPE_11__* pNext; } ;
typedef TYPE_3__ Trigger ;
typedef int Table ;
struct TYPE_12__ {TYPE_2__* db; } ;
struct TYPE_10__ {TYPE_1__* aDb; } ;
struct TYPE_9__ {scalar_t__ pSchema; } ;
typedef TYPE_4__ Parse ;
typedef int ExprList ;


 int TK_DELETE ;
 int TK_INSERT ;
 int TK_UPDATE ;
 int TRIGGER_AFTER ;
 int TRIGGER_BEFORE ;
 int assert (int) ;
 scalar_t__ checkColumnOverlap (int ,int *) ;
 int sqlite3CodeRowTriggerDirect (TYPE_4__*,TYPE_3__*,int *,int,int,int) ;

void sqlite3CodeRowTrigger(
  Parse *pParse,
  Trigger *pTrigger,
  int op,
  ExprList *pChanges,
  int tr_tm,
  Table *pTab,
  int reg,
  int orconf,
  int ignoreJump
){
  Trigger *p;

  assert( op==TK_UPDATE || op==TK_INSERT || op==TK_DELETE );
  assert( tr_tm==TRIGGER_BEFORE || tr_tm==TRIGGER_AFTER );
  assert( (op==TK_UPDATE)==(pChanges!=0) );

  for(p=pTrigger; p; p=p->pNext){




    assert( p->pSchema!=0 );
    assert( p->pTabSchema!=0 );
    assert( p->pSchema==p->pTabSchema
         || p->pSchema==pParse->db->aDb[1].pSchema );


    if( p->op==op
     && p->tr_tm==tr_tm
     && checkColumnOverlap(p->pColumns, pChanges)
    ){
      sqlite3CodeRowTriggerDirect(pParse, p, pTab, reg, orconf, ignoreJump);
    }
  }
}
