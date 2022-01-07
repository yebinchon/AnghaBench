
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ i64 ;
typedef int FILE ;


 int SEEK_SET ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 size_t fread (int *,int,int,int *) ;
 int fseek (int *,long,int ) ;
 char* sqlite3_mprintf (char*) ;

__attribute__((used)) static int zipfileReadData(
  FILE *pFile,
  u8 *aRead,
  int nRead,
  i64 iOff,
  char **pzErrmsg
){
  size_t n;
  fseek(pFile, (long)iOff, SEEK_SET);
  n = fread(aRead, 1, nRead, pFile);
  if( (int)n!=nRead ){
    *pzErrmsg = sqlite3_mprintf("error in fread()");
    return SQLITE_ERROR;
  }
  return SQLITE_OK;
}
