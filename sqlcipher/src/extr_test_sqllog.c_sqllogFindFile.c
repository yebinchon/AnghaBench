
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zLine ;
typedef int zBuf ;
struct TYPE_2__ {int zPrefix; int zIdx; } ;
typedef int FILE ;


 int SQLITE_IOERR ;
 int SQLLOG_NAMESZ ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int memset (char*,int ,int) ;
 int sqlite3_log (int ,char*) ;
 char* sqlite3_mprintf (char*,int ,char*) ;
 scalar_t__ sqllog_isspace (char) ;
 TYPE_1__ sqllogglobal ;
 int strlen (char const*) ;

__attribute__((used)) static char *sqllogFindFile(const char *zFile){
  char *zRet = 0;
  FILE *fd = 0;


  fd = fopen(sqllogglobal.zIdx, "r");
  if( fd==0 ){
    sqlite3_log(SQLITE_IOERR, "sqllogFindFile(): error in fopen()");
    return 0;
  }




  while( feof(fd)==0 ){
    char zLine[SQLLOG_NAMESZ*2+5];
    if( fgets(zLine, sizeof(zLine), fd) ){
      int n;
      char *z;

      zLine[sizeof(zLine)-1] = '\0';
      z = zLine;
      while( *z>='0' && *z<='9' ) z++;
      while( *z==' ' ) z++;

      n = strlen(z);
      while( n>0 && sqllog_isspace(z[n-1]) ) n--;

      if( n==strlen(zFile) && 0==memcmp(zFile, z, n) ){
        char zBuf[16];
        memset(zBuf, 0, sizeof(zBuf));
        z = zLine;
        while( *z>='0' && *z<='9' ){
          zBuf[z-zLine] = *z;
          z++;
        }
        zRet = sqlite3_mprintf("%s_%s.db", sqllogglobal.zPrefix, zBuf);
        break;
      }
    }
  }

  if( ferror(fd) ){
    sqlite3_log(SQLITE_IOERR, "sqllogFindFile(): error reading index file");
  }

  fclose(fd);
  return zRet;
}
