
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;
typedef int VFile ;


 int SQLITE_OK ;
 int * findVFile (char const*) ;

__attribute__((used)) static int inmemAccess(
  sqlite3_vfs *pVfs,
  const char *zFilename,
  int flags,
  int *pResOut
){
  VFile *pVFile = findVFile(zFilename);
  *pResOut = pVFile!=0;
  return SQLITE_OK;
}
