
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* pNext; int table; TYPE_4__* const pTabSchema; } ;
typedef TYPE_2__ Trigger ;
struct TYPE_13__ {TYPE_2__* pTrigger; int zName; TYPE_4__* const pSchema; } ;
typedef TYPE_3__ Table ;
struct TYPE_16__ {TYPE_1__* aDb; } ;
struct TYPE_15__ {TYPE_9__* db; scalar_t__ disableTriggers; } ;
struct TYPE_14__ {int trigHash; } ;
struct TYPE_11__ {TYPE_4__* pSchema; } ;
typedef TYPE_4__ Schema ;
typedef TYPE_5__ Parse ;
typedef int HashElem ;


 int assert (int ) ;
 int sqlite3SchemaMutexHeld (TYPE_9__*,int ,TYPE_4__* const) ;
 scalar_t__ sqlite3StrICmp (int ,int ) ;
 scalar_t__ sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;

Trigger *sqlite3TriggerList(Parse *pParse, Table *pTab){
  Schema * const pTmpSchema = pParse->db->aDb[1].pSchema;
  Trigger *pList = 0;

  if( pParse->disableTriggers ){
    return 0;
  }

  if( pTmpSchema!=pTab->pSchema ){
    HashElem *p;
    assert( sqlite3SchemaMutexHeld(pParse->db, 0, pTmpSchema) );
    for(p=sqliteHashFirst(&pTmpSchema->trigHash); p; p=sqliteHashNext(p)){
      Trigger *pTrig = (Trigger *)sqliteHashData(p);
      if( pTrig->pTabSchema==pTab->pSchema
       && 0==sqlite3StrICmp(pTrig->table, pTab->zName)
      ){
        pTrig->pNext = (pList ? pList : pTab->pTrigger);
        pList = pTrig;
      }
    }
  }

  return (pList ? pList : pTab->pTrigger);
}
