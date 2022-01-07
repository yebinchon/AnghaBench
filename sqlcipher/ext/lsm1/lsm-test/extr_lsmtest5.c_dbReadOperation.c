
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int TestDb ;
typedef int DbParameters ;


 int DB_KEY_BYTES ;
 scalar_t__ dbComputeCksum (int *,int *,int,int,int*) ;
 int dbFormatCksumValue (scalar_t__,char*) ;
 int dbFormatKey (int *,int,int,char*) ;
 int dbMaxLevel (int *) ;
 scalar_t__ tdb_transaction_support (int *) ;
 int testBegin (int *,int,int*) ;
 int testCommit (int *,int ,int*) ;
 int testFetchStr (int *,char*,char*,int*) ;

__attribute__((used)) static void dbReadOperation(
  DbParameters *pParam,
  TestDb *pDb,
  void (*xDelay)(void *),
  void *pDelayCtx,
  int iKey,
  int *pRc
){
  const int iMax = dbMaxLevel(pParam);
  int i;

  if( tdb_transaction_support(pDb) ) testBegin(pDb, 1, pRc);
  for(i=1; *pRc==0 && i<=iMax; i++){
    char zCksum[DB_KEY_BYTES];
    char zKey[DB_KEY_BYTES];
    u32 iCksum = 0;

    iCksum = dbComputeCksum(pParam, pDb, i, iKey, pRc);
    if( iCksum ){
      if( xDelay && i==1 ) xDelay(pDelayCtx);
      dbFormatCksumValue(iCksum, zCksum);
      dbFormatKey(pParam, i, iKey, zKey);
      testFetchStr(pDb, zKey, zCksum, pRc);
    }
  }
  if( tdb_transaction_support(pDb) ) testCommit(pDb, 0, pRc);
}
