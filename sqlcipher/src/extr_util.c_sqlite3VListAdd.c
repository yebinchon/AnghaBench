
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;
typedef int sqlite3 ;
typedef int VList ;


 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int* sqlite3DbRealloc (int *,int*,int) ;

VList *sqlite3VListAdd(
  sqlite3 *db,
  VList *pIn,
  const char *zName,
  int nName,
  int iVal
){
  int nInt;
  char *z;
  int i;

  nInt = nName/4 + 3;
  assert( pIn==0 || pIn[0]>=3 );
  if( pIn==0 || pIn[1]+nInt > pIn[0] ){

    sqlite3_int64 nAlloc = (pIn ? 2*(sqlite3_int64)pIn[0] : 10) + nInt;
    VList *pOut = sqlite3DbRealloc(db, pIn, nAlloc*sizeof(int));
    if( pOut==0 ) return pIn;
    if( pIn==0 ) pOut[1] = 2;
    pIn = pOut;
    pIn[0] = nAlloc;
  }
  i = pIn[1];
  pIn[i] = iVal;
  pIn[i+1] = nInt;
  z = (char*)&pIn[i+2];
  pIn[1] = i+nInt;
  assert( pIn[1]<=pIn[0] );
  memcpy(z, zName, nName);
  z[nName] = 0;
  return pIn;
}
