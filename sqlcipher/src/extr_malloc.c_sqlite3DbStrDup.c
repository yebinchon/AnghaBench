
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int memcpy (char*,char const*,size_t) ;
 char* sqlite3DbMallocRaw (int *,size_t) ;
 int strlen (char const*) ;

char *sqlite3DbStrDup(sqlite3 *db, const char *z){
  char *zNew;
  size_t n;
  if( z==0 ){
    return 0;
  }
  n = strlen(z) + 1;
  zNew = sqlite3DbMallocRaw(db, n);
  if( zNew ){
    memcpy(zNew, z, n);
  }
  return zNew;
}
