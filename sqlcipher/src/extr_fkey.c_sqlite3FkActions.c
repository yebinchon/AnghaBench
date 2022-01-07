
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int Trigger ;
typedef int Table ;
struct TYPE_12__ {struct TYPE_12__* pNextTo; } ;
struct TYPE_11__ {TYPE_1__* db; } ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ FKey ;
typedef int ExprList ;


 int OE_Abort ;
 int SQLITE_ForeignKeys ;
 int * fkActionTrigger (TYPE_2__*,int *,TYPE_3__*,int *) ;
 scalar_t__ fkParentIsModified (int *,TYPE_3__*,int*,int) ;
 int sqlite3CodeRowTriggerDirect (TYPE_2__*,int *,int *,int,int ,int ) ;
 TYPE_3__* sqlite3FkReferences (int *) ;

void sqlite3FkActions(
  Parse *pParse,
  Table *pTab,
  ExprList *pChanges,
  int regOld,
  int *aChange,
  int bChngRowid
){




  if( pParse->db->flags&SQLITE_ForeignKeys ){
    FKey *pFKey;
    for(pFKey = sqlite3FkReferences(pTab); pFKey; pFKey=pFKey->pNextTo){
      if( aChange==0 || fkParentIsModified(pTab, pFKey, aChange, bChngRowid) ){
        Trigger *pAct = fkActionTrigger(pParse, pTab, pFKey, pChanges);
        if( pAct ){
          sqlite3CodeRowTriggerDirect(pParse, pAct, pTab, regOld, OE_Abort, 0);
        }
      }
    }
  }
}
