
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int zSpan; int orconf; int * pSelect; int op; } ;
typedef TYPE_1__ TriggerStep ;
typedef int Select ;


 int OE_Default ;
 int TK_SELECT ;
 TYPE_1__* sqlite3DbMallocZero (int *,int) ;
 int sqlite3SelectDelete (int *,int *) ;
 int triggerSpanDup (int *,char const*,char const*) ;

TriggerStep *sqlite3TriggerSelectStep(
  sqlite3 *db,
  Select *pSelect,
  const char *zStart,
  const char *zEnd
){
  TriggerStep *pTriggerStep = sqlite3DbMallocZero(db, sizeof(TriggerStep));
  if( pTriggerStep==0 ) {
    sqlite3SelectDelete(db, pSelect);
    return 0;
  }
  pTriggerStep->op = TK_SELECT;
  pTriggerStep->pSelect = pSelect;
  pTriggerStep->orconf = OE_Default;
  pTriggerStep->zSpan = triggerSpanDup(db, zStart, zEnd);
  return pTriggerStep;
}
