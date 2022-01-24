#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int (* xDelete ) (TYPE_1__*,char const*,int) ;int (* xAccess ) (TYPE_1__*,char*,int /*<<< orphan*/ ,int*) ;} ;
typedef  TYPE_1__ sqlite3_vfs ;
struct TYPE_10__ {TYPE_1__* pOrigVfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_ACCESS_EXISTS ; 
 int SQLITE_IOERR_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_OPEN_MAIN_JOURNAL ; 
 int /*<<< orphan*/  SQLITE_OPEN_WAL ; 
 TYPE_8__ gMultiplex ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (TYPE_1__*,char const*,int) ; 
 int FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (TYPE_1__*,char*,int) ; 
 int FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static int FUNC9(
  sqlite3_vfs *pVfs,         /* The multiplex VFS */
  const char *zName,         /* Name of file to delete */
  int syncDir
){
  int rc;
  sqlite3_vfs *pOrigVfs = gMultiplex.pOrigVfs;   /* Real VFS */
  rc = pOrigVfs->xDelete(pOrigVfs, zName, syncDir);
  if( rc==SQLITE_OK ){
    /* If the main chunk was deleted successfully, also delete any subsequent
    ** chunks - starting with the last (highest numbered). 
    */
    int nName = (int)FUNC3(zName);
    char *z;
    z = FUNC2(nName + 5);
    if( z==0 ){
      rc = SQLITE_IOERR_NOMEM;
    }else{
      int iChunk = 0;
      int bExists;
      do{
        FUNC0(zName, nName, SQLITE_OPEN_MAIN_JOURNAL, ++iChunk, z);
        rc = pOrigVfs->xAccess(pOrigVfs, z, SQLITE_ACCESS_EXISTS, &bExists);
      }while( rc==SQLITE_OK && bExists );
      while( rc==SQLITE_OK && iChunk>1 ){
        FUNC0(zName, nName, SQLITE_OPEN_MAIN_JOURNAL, --iChunk, z);
        rc = pOrigVfs->xDelete(pOrigVfs, z, syncDir);
      }
      if( rc==SQLITE_OK ){
        iChunk = 0;
        do{
          FUNC0(zName, nName, SQLITE_OPEN_WAL, ++iChunk, z);
          rc = pOrigVfs->xAccess(pOrigVfs, z, SQLITE_ACCESS_EXISTS, &bExists);
        }while( rc==SQLITE_OK && bExists );
        while( rc==SQLITE_OK && iChunk>1 ){
          FUNC0(zName, nName, SQLITE_OPEN_WAL, --iChunk, z);
          rc = pOrigVfs->xDelete(pOrigVfs, z, syncDir);
        }
      }
    }
    FUNC1(z);
  }
  return rc;
}