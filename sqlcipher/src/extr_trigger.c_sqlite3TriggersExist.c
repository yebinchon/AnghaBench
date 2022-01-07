
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int op; int tr_tm; int pColumns; struct TYPE_9__* pNext; } ;
typedef TYPE_2__ Trigger ;
typedef int Table ;
struct TYPE_10__ {TYPE_1__* db; } ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_3__ Parse ;
typedef int ExprList ;


 scalar_t__ IsVirtual (int *) ;
 int SQLITE_EnableTrigger ;
 int assert (int) ;
 scalar_t__ checkColumnOverlap (int ,int *) ;
 TYPE_2__* sqlite3TriggerList (TYPE_3__*,int *) ;

Trigger *sqlite3TriggersExist(
  Parse *pParse,
  Table *pTab,
  int op,
  ExprList *pChanges,
  int *pMask
){
  int mask = 0;
  Trigger *pList = 0;
  Trigger *p;

  if( (pParse->db->flags & SQLITE_EnableTrigger)!=0 ){
    pList = sqlite3TriggerList(pParse, pTab);
  }
  assert( pList==0 || IsVirtual(pTab)==0 );
  for(p=pList; p; p=p->pNext){
    if( p->op==op && checkColumnOverlap(p->pColumns, pChanges) ){
      mask |= p->tr_tm;
    }
  }
  if( pMask ){
    *pMask = mask;
  }
  return (mask ? pList : 0);
}
