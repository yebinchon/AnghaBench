
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 scalar_t__ ALWAYS (int) ;
 char* sqlite3DbStrNDup (int *,char const*,int) ;
 scalar_t__ sqlite3Isspace (char const) ;

char *sqlite3DbSpanDup(sqlite3 *db, const char *zStart, const char *zEnd){
  int n;
  while( sqlite3Isspace(zStart[0]) ) zStart++;
  n = (int)(zEnd - zStart);
  while( ALWAYS(n>0) && sqlite3Isspace(zStart[n-1]) ) n--;
  return sqlite3DbStrNDup(db, zStart, n);
}
