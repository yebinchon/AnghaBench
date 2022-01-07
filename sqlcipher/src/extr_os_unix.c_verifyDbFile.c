
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctrlFlags; int zPath; int h; } ;
typedef TYPE_1__ unixFile ;
struct stat {int st_nlink; } ;


 int SQLITE_WARNING ;
 int UNIXFILE_NOLOCK ;
 scalar_t__ fileHasMoved (TYPE_1__*) ;
 int osFstat (int ,struct stat*) ;
 int sqlite3_log (int ,char*,int ) ;

__attribute__((used)) static void verifyDbFile(unixFile *pFile){
  struct stat buf;
  int rc;


  if( pFile->ctrlFlags & UNIXFILE_NOLOCK ) return;

  rc = osFstat(pFile->h, &buf);
  if( rc!=0 ){
    sqlite3_log(SQLITE_WARNING, "cannot fstat db file %s", pFile->zPath);
    return;
  }
  if( buf.st_nlink==0 ){
    sqlite3_log(SQLITE_WARNING, "file unlinked while open: %s", pFile->zPath);
    return;
  }
  if( buf.st_nlink>1 ){
    sqlite3_log(SQLITE_WARNING, "multiple links to file: %s", pFile->zPath);
    return;
  }
  if( fileHasMoved(pFile) ){
    sqlite3_log(SQLITE_WARNING, "file renamed while open: %s", pFile->zPath);
    return;
  }
}
