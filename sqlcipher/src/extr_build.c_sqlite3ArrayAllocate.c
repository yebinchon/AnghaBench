
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;
typedef int sqlite3 ;


 int memset (char*,int ,int) ;
 void* sqlite3DbRealloc (int *,void*,int) ;

void *sqlite3ArrayAllocate(
  sqlite3 *db,
  void *pArray,
  int szEntry,
  int *pnEntry,
  int *pIdx
){
  char *z;
  sqlite3_int64 n = *pIdx = *pnEntry;
  if( (n & (n-1))==0 ){
    sqlite3_int64 sz = (n==0) ? 1 : 2*n;
    void *pNew = sqlite3DbRealloc(db, pArray, sz*szEntry);
    if( pNew==0 ){
      *pIdx = -1;
      return pArray;
    }
    pArray = pNew;
  }
  z = (char*)pArray;
  memset(&z[n * szEntry], 0, szEntry);
  ++*pnEntry;
  return pArray;
}
