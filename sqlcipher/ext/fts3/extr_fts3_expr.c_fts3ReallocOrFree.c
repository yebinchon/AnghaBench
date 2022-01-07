
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 int sqlite3_free (void*) ;
 void* sqlite3_realloc64 (void*,int ) ;

__attribute__((used)) static void *fts3ReallocOrFree(void *pOrig, sqlite3_int64 nNew){
  void *pRet = sqlite3_realloc64(pOrig, nNew);
  if( !pRet ){
    sqlite3_free(pOrig);
  }
  return pRet;
}
