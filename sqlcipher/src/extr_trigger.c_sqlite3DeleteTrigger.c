
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int pColumns; int pWhen; struct TYPE_4__* table; struct TYPE_4__* zName; int step_list; } ;
typedef TYPE_1__ Trigger ;


 int sqlite3DbFree (int *,TYPE_1__*) ;
 int sqlite3DeleteTriggerStep (int *,int ) ;
 int sqlite3ExprDelete (int *,int ) ;
 int sqlite3IdListDelete (int *,int ) ;

void sqlite3DeleteTrigger(sqlite3 *db, Trigger *pTrigger){
  if( pTrigger==0 ) return;
  sqlite3DeleteTriggerStep(db, pTrigger->step_list);
  sqlite3DbFree(db, pTrigger->zName);
  sqlite3DbFree(db, pTrigger->table);
  sqlite3ExprDelete(db, pTrigger->pWhen);
  sqlite3IdListDelete(db, pTrigger->pColumns);
  sqlite3DbFree(db, pTrigger);
}
