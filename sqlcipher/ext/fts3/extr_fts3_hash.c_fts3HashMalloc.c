
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 int memset (void*,int ,int ) ;
 void* sqlite3_malloc64 (int ) ;

__attribute__((used)) static void *fts3HashMalloc(sqlite3_int64 n){
  void *p = sqlite3_malloc64(n);
  if( p ){
    memset(p, 0, n);
  }
  return p;
}
