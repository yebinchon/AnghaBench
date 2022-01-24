#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {char* zFile; int /*<<< orphan*/ * aBuffer; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ ZipfileTab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int ZIPFILE_BUFFER_SIZE ; 
 int /*<<< orphan*/  ZIPFILE_SCHEMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const* const,char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  int nByte = sizeof(ZipfileTab) + ZIPFILE_BUFFER_SIZE;
  int nFile = 0;
  const char *zFile = 0;
  ZipfileTab *pNew = 0;
  int rc;

  /* If the table name is not "zipfile", require that the argument be
  ** specified. This stops zipfile tables from being created as:
  **
  **   CREATE VIRTUAL TABLE zzz USING zipfile();
  **
  ** It does not prevent:
  **
  **   CREATE VIRTUAL TABLE zipfile USING zipfile();
  */
  FUNC0( 0==FUNC6(argv[0], "zipfile") );
  if( (0!=FUNC6(argv[2], "zipfile") && argc<4) || argc>4 ){
    *pzErr = FUNC5("zipfile constructor requires one argument");
    return SQLITE_ERROR;
  }

  if( argc>3 ){
    zFile = argv[3];
    nFile = (int)FUNC7(zFile)+1;
  }

  rc = FUNC3(db, ZIPFILE_SCHEMA);
  if( rc==SQLITE_OK ){
    pNew = (ZipfileTab*)FUNC4((sqlite3_int64)nByte+nFile);
    if( pNew==0 ) return SQLITE_NOMEM;
    FUNC2(pNew, 0, nByte+nFile);
    pNew->db = db;
    pNew->aBuffer = (u8*)&pNew[1];
    if( zFile ){
      pNew->zFile = (char*)&pNew->aBuffer[ZIPFILE_BUFFER_SIZE];
      FUNC1(pNew->zFile, zFile, nFile);
      FUNC8(pNew->zFile);
    }
  }
  *ppVtab = (sqlite3_vtab*)pNew;
  return rc;
}