
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int sqlite3 ;


 int MEMTYPE_HEAP ;
 void* sqlite3DbMallocRawNN (int *,int ) ;
 void* sqlite3Malloc (int ) ;
 int sqlite3MemdebugSetType (void*,int ) ;

void *sqlite3DbMallocRaw(sqlite3 *db, u64 n){
  void *p;
  if( db ) return sqlite3DbMallocRawNN(db, n);
  p = sqlite3Malloc(n);
  sqlite3MemdebugSetType(p, MEMTYPE_HEAP);
  return p;
}
