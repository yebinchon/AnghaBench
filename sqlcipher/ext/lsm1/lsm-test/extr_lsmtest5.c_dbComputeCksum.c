
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int TestDb ;
struct TYPE_4__ {int nFanout; } ;
typedef TYPE_1__ DbParameters ;


 int DB_KEY_BYTES ;
 int assert (int) ;
 int dbCksum ;
 int dbFormatKey (TYPE_1__*,int,int,char*) ;
 int strlen (char*) ;
 int tdb_scan (int *,scalar_t__*,int ,char*,int,char*,int,int ) ;

__attribute__((used)) static u32 dbComputeCksum(
  DbParameters *pParam,
  TestDb *pDb,
  int iLevel,
  int iKey,
  int *pRc
){
  u32 cksum = 0;
  if( *pRc==0 ){
    int nFirst;
    int nLast;
    int iFirst = 0;
    int iLast = 0;
    int i;
    int f = 1;
    char zFirst[DB_KEY_BYTES];
    char zLast[DB_KEY_BYTES];

    assert( iLevel>=1 );
    for(i=0; i<iLevel; i++) f = f * pParam->nFanout;

    iFirst = f*(iKey/f);
    iLast = iFirst + f - 1;
    dbFormatKey(pParam, iLevel-1, iFirst, zFirst);
    dbFormatKey(pParam, iLevel-1, iLast, zLast);
    nFirst = strlen(zFirst);
    nLast = strlen(zLast);

    *pRc = tdb_scan(pDb, (u32*)&cksum, 0, zFirst, nFirst, zLast, nLast,dbCksum);
  }

  return cksum;
}
