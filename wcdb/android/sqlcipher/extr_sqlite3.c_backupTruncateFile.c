
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;
typedef scalar_t__ i64 ;


 int SQLITE_OK ;
 int sqlite3OsFileSize (int *,scalar_t__*) ;
 int sqlite3OsTruncate (int *,scalar_t__) ;

__attribute__((used)) static int backupTruncateFile(sqlite3_file *pFile, i64 iSize){
  i64 iCurrent;
  int rc = sqlite3OsFileSize(pFile, &iCurrent);
  if( rc==SQLITE_OK && iCurrent>iSize ){
    rc = sqlite3OsTruncate(pFile, iSize);
  }
  return rc;
}
