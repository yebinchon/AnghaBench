
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int (* xDelete ) (TYPE_1__*,char const*,int) ;int (* xAccess ) (TYPE_1__*,char*,int ,int*) ;} ;
typedef TYPE_1__ sqlite3_vfs ;
struct TYPE_10__ {TYPE_1__* pOrigVfs; } ;


 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_IOERR_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_OPEN_MAIN_JOURNAL ;
 int SQLITE_OPEN_WAL ;
 TYPE_8__ gMultiplex ;
 int multiplexFilename (char const*,int,int ,int,char*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (int) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (TYPE_1__*,char const*,int) ;
 int stub2 (TYPE_1__*,char*,int ,int*) ;
 int stub3 (TYPE_1__*,char*,int) ;
 int stub4 (TYPE_1__*,char*,int ,int*) ;
 int stub5 (TYPE_1__*,char*,int) ;

__attribute__((used)) static int multiplexDelete(
  sqlite3_vfs *pVfs,
  const char *zName,
  int syncDir
){
  int rc;
  sqlite3_vfs *pOrigVfs = gMultiplex.pOrigVfs;
  rc = pOrigVfs->xDelete(pOrigVfs, zName, syncDir);
  if( rc==SQLITE_OK ){



    int nName = (int)strlen(zName);
    char *z;
    z = sqlite3_malloc64(nName + 5);
    if( z==0 ){
      rc = SQLITE_IOERR_NOMEM;
    }else{
      int iChunk = 0;
      int bExists;
      do{
        multiplexFilename(zName, nName, SQLITE_OPEN_MAIN_JOURNAL, ++iChunk, z);
        rc = pOrigVfs->xAccess(pOrigVfs, z, SQLITE_ACCESS_EXISTS, &bExists);
      }while( rc==SQLITE_OK && bExists );
      while( rc==SQLITE_OK && iChunk>1 ){
        multiplexFilename(zName, nName, SQLITE_OPEN_MAIN_JOURNAL, --iChunk, z);
        rc = pOrigVfs->xDelete(pOrigVfs, z, syncDir);
      }
      if( rc==SQLITE_OK ){
        iChunk = 0;
        do{
          multiplexFilename(zName, nName, SQLITE_OPEN_WAL, ++iChunk, z);
          rc = pOrigVfs->xAccess(pOrigVfs, z, SQLITE_ACCESS_EXISTS, &bExists);
        }while( rc==SQLITE_OK && bExists );
        while( rc==SQLITE_OK && iChunk>1 ){
          multiplexFilename(zName, nName, SQLITE_OPEN_WAL, --iChunk, z);
          rc = pOrigVfs->xDelete(pOrigVfs, z, syncDir);
        }
      }
    }
    sqlite3_free(z);
  }
  return rc;
}
