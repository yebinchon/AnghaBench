
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_5__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_10__ {int tnum; } ;
typedef TYPE_3__ Table ;
struct TYPE_12__ {TYPE_1__* pSchema; } ;
struct TYPE_11__ {int tnum; } ;
struct TYPE_8__ {int idxHash; int tblHash; } ;
typedef TYPE_4__ Index ;
typedef int HashElem ;
typedef int Hash ;
typedef TYPE_5__ Db ;


 int assert (int ) ;
 int sqlite3SchemaMutexHeld (TYPE_2__*,int,int ) ;
 void* sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;

void sqlite3RootPageMoved(sqlite3 *db, int iDb, int iFrom, int iTo){
  HashElem *pElem;
  Hash *pHash;
  Db *pDb;

  assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
  pDb = &db->aDb[iDb];
  pHash = &pDb->pSchema->tblHash;
  for(pElem=sqliteHashFirst(pHash); pElem; pElem=sqliteHashNext(pElem)){
    Table *pTab = sqliteHashData(pElem);
    if( pTab->tnum==iFrom ){
      pTab->tnum = iTo;
    }
  }
  pHash = &pDb->pSchema->idxHash;
  for(pElem=sqliteHashFirst(pHash); pElem; pElem=sqliteHashNext(pElem)){
    Index *pIdx = sqliteHashData(pElem);
    if( pIdx->tnum==iFrom ){
      pIdx->tnum = iTo;
    }
  }
}
