
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int TestDb ;
struct TYPE_6__ {int nKey; } ;
typedef TYPE_1__ DbParameters ;


 int DB_KEY_BYTES ;
 int assert (int) ;
 int dbComputeCksum (TYPE_1__*,int *,int,int,int*) ;
 int dbFormatCksumValue (int ,char*) ;
 int dbFormatKey (TYPE_1__*,int,int,char*) ;
 int dbMaxLevel (TYPE_1__*) ;
 int tdb_begin (int *,int) ;
 scalar_t__ tdb_transaction_support (int *) ;
 int testCommit (int *,int ,int*) ;
 int testWriteStr (int *,char*,char const*,int*) ;

__attribute__((used)) static int dbWriteOperation(
  DbParameters *pParam,
  TestDb *pDb,
  int iKey,
  const char *zValue,
  int *pRc
){
  const int iMax = dbMaxLevel(pParam);
  char zKey[DB_KEY_BYTES];
  int i;
  int rc;

  assert( iKey>=0 && iKey<pParam->nKey );
  dbFormatKey(pParam, 0, iKey, zKey);


  if( *pRc==0 && tdb_transaction_support(pDb) ){
    rc = tdb_begin(pDb, 2);
    if( rc==5 ) return 0;
    *pRc = rc;
  }

  testWriteStr(pDb, zKey, zValue, pRc);
  for(i=1; i<=iMax; i++){
    char zCksum[DB_KEY_BYTES];
    u32 iCksum = 0;

    iCksum = dbComputeCksum(pParam, pDb, i, iKey, pRc);
    dbFormatCksumValue(iCksum, zCksum);
    dbFormatKey(pParam, i, iKey, zKey);
    testWriteStr(pDb, zKey, zCksum, pRc);
  }
  if( tdb_transaction_support(pDb) ) testCommit(pDb, 0, pRc);
  return 1;
}
