
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int mDbFlags; TYPE_2__* aDb; } ;
typedef TYPE_4__ sqlite3 ;
struct TYPE_16__ {struct TYPE_16__* pNext; TYPE_3__* pTable; } ;
struct TYPE_14__ {TYPE_5__* pIndex; } ;
struct TYPE_13__ {TYPE_1__* pSchema; } ;
struct TYPE_12__ {int idxHash; } ;
typedef TYPE_5__ Index ;
typedef int Hash ;


 scalar_t__ ALWAYS (TYPE_5__*) ;
 int DBFLAG_SchemaChange ;
 int assert (int ) ;
 int sqlite3FreeIndex (TYPE_4__*,TYPE_5__*) ;
 TYPE_5__* sqlite3HashInsert (int *,char const*,int ) ;
 int sqlite3SchemaMutexHeld (TYPE_4__*,int,int ) ;

void sqlite3UnlinkAndDeleteIndex(sqlite3 *db, int iDb, const char *zIdxName){
  Index *pIndex;
  Hash *pHash;

  assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
  pHash = &db->aDb[iDb].pSchema->idxHash;
  pIndex = sqlite3HashInsert(pHash, zIdxName, 0);
  if( ALWAYS(pIndex) ){
    if( pIndex->pTable->pIndex==pIndex ){
      pIndex->pTable->pIndex = pIndex->pNext;
    }else{
      Index *p;


      p = pIndex->pTable->pIndex;
      while( ALWAYS(p) && p->pNext!=pIndex ){ p = p->pNext; }
      if( ALWAYS(p && p->pNext==pIndex) ){
        p->pNext = pIndex->pNext;
      }
    }
    sqlite3FreeIndex(db, pIndex);
  }
  db->mDbFlags |= DBFLAG_SchemaChange;
}
