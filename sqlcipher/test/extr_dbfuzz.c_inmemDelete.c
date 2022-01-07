
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {scalar_t__ nRef; int sz; scalar_t__ a; scalar_t__ zFilename; } ;
typedef TYPE_1__ VFile ;


 int SQLITE_IOERR_DELETE ;
 int SQLITE_OK ;
 TYPE_1__* findVFile (char const*) ;
 int free (scalar_t__) ;

__attribute__((used)) static int inmemDelete(
  sqlite3_vfs *pVfs,
  const char *zFilename,
  int syncdir
){
  VFile *pVFile = findVFile(zFilename);
  if( pVFile==0 ) return SQLITE_OK;
  if( pVFile->nRef==0 ){
    free(pVFile->zFilename);
    pVFile->zFilename = 0;
    pVFile->sz = -1;
    free(pVFile->a);
    pVFile->a = 0;
    return SQLITE_OK;
  }
  return SQLITE_IOERR_DELETE;
}
