
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_26__ {TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_27__ {scalar_t__ z; } ;
typedef TYPE_3__ Token ;
typedef int Table ;
struct TYPE_28__ {TYPE_2__* db; } ;
struct TYPE_25__ {char* zDbSName; } ;
typedef TYPE_4__ Parse ;
typedef int Index ;
typedef int CollSeq ;


 int ENC (TYPE_2__*) ;
 scalar_t__ NEVER (int) ;
 scalar_t__ SQLITE_OK ;
 int assert (scalar_t__) ;
 int reindexDatabases (TYPE_4__*,char*) ;
 int reindexTable (TYPE_4__*,int *,int ) ;
 int sqlite3BeginWriteOperation (TYPE_4__*,int ,int) ;
 int sqlite3DbFree (TYPE_2__*,char*) ;
 int sqlite3ErrorMsg (TYPE_4__*,char*) ;
 int * sqlite3FindCollSeq (TYPE_2__*,int ,char*,int ) ;
 int * sqlite3FindIndex (TYPE_2__*,char*,char const*) ;
 int * sqlite3FindTable (TYPE_2__*,char*,char const*) ;
 char* sqlite3NameFromToken (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ sqlite3ReadSchema (TYPE_4__*) ;
 int sqlite3RefillIndex (TYPE_4__*,int *,int) ;
 int sqlite3TwoPartName (TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__**) ;

void sqlite3Reindex(Parse *pParse, Token *pName1, Token *pName2){
  CollSeq *pColl;
  char *z;
  const char *zDb;
  Table *pTab;
  Index *pIndex;
  int iDb;
  sqlite3 *db = pParse->db;
  Token *pObjName;



  if( SQLITE_OK!=sqlite3ReadSchema(pParse) ){
    return;
  }

  if( pName1==0 ){
    reindexDatabases(pParse, 0);
    return;
  }else if( NEVER(pName2==0) || pName2->z==0 ){
    char *zColl;
    assert( pName1->z );
    zColl = sqlite3NameFromToken(pParse->db, pName1);
    if( !zColl ) return;
    pColl = sqlite3FindCollSeq(db, ENC(db), zColl, 0);
    if( pColl ){
      reindexDatabases(pParse, zColl);
      sqlite3DbFree(db, zColl);
      return;
    }
    sqlite3DbFree(db, zColl);
  }
  iDb = sqlite3TwoPartName(pParse, pName1, pName2, &pObjName);
  if( iDb<0 ) return;
  z = sqlite3NameFromToken(db, pObjName);
  if( z==0 ) return;
  zDb = db->aDb[iDb].zDbSName;
  pTab = sqlite3FindTable(db, z, zDb);
  if( pTab ){
    reindexTable(pParse, pTab, 0);
    sqlite3DbFree(db, z);
    return;
  }
  pIndex = sqlite3FindIndex(db, z, zDb);
  sqlite3DbFree(db, z);
  if( pIndex ){
    sqlite3BeginWriteOperation(pParse, 0, iDb);
    sqlite3RefillIndex(pParse, pIndex, -1);
    return;
  }
  sqlite3ErrorMsg(pParse, "unable to identify the object to be reindexed");
}
