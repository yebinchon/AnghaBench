
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zBase ;
typedef int va_list ;
typedef int StrAccum ;


 int SQLITE_MAX_LENGTH ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_PRINT_BUF_SIZE ;
 char* sqlite3StrAccumFinish (int *) ;
 int sqlite3StrAccumInit (int *,int ,char*,int,int ) ;
 scalar_t__ sqlite3_initialize () ;
 int sqlite3_str_vappendf (int *,char const*,int ) ;

char *sqlite3_vmprintf(const char *zFormat, va_list ap){
  char *z;
  char zBase[SQLITE_PRINT_BUF_SIZE];
  StrAccum acc;
  if( sqlite3_initialize() ) return 0;

  sqlite3StrAccumInit(&acc, 0, zBase, sizeof(zBase), SQLITE_MAX_LENGTH);
  sqlite3_str_vappendf(&acc, zFormat, ap);
  z = sqlite3StrAccumFinish(&acc);
  return z;
}
