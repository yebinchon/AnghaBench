
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int mDbFlags; TYPE_2__* aDb; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_17__ {scalar_t__ pSchema; scalar_t__ pTabSchema; struct TYPE_17__* pNext; } ;
typedef TYPE_4__ Trigger ;
struct TYPE_18__ {TYPE_4__* pTrigger; } ;
typedef TYPE_5__ Table ;
struct TYPE_15__ {TYPE_1__* pSchema; } ;
struct TYPE_14__ {int trigHash; } ;
typedef int Hash ;


 scalar_t__ ALWAYS (TYPE_4__*) ;
 int DBFLAG_SchemaChange ;
 int assert (int ) ;
 int sqlite3DeleteTrigger (TYPE_3__*,TYPE_4__*) ;
 TYPE_4__* sqlite3HashInsert (int *,char const*,int ) ;
 int sqlite3SchemaMutexHeld (TYPE_3__*,int,int ) ;
 TYPE_5__* tableOfTrigger (TYPE_4__*) ;

void sqlite3UnlinkAndDeleteTrigger(sqlite3 *db, int iDb, const char *zName){
  Trigger *pTrigger;
  Hash *pHash;

  assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
  pHash = &(db->aDb[iDb].pSchema->trigHash);
  pTrigger = sqlite3HashInsert(pHash, zName, 0);
  if( ALWAYS(pTrigger) ){
    if( pTrigger->pSchema==pTrigger->pTabSchema ){
      Table *pTab = tableOfTrigger(pTrigger);
      Trigger **pp;
      for(pp=&pTab->pTrigger; *pp!=pTrigger; pp=&((*pp)->pNext));
      *pp = (*pp)->pNext;
    }
    sqlite3DeleteTrigger(db, pTrigger);
    db->mDbFlags |= DBFLAG_SchemaChange;
  }
}
