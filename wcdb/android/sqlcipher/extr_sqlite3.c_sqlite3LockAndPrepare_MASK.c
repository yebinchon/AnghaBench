#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_9__ {int errMask; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 int SQLITE_ERROR_RETRY ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int SQLITE_SCHEMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
  sqlite3 *db,              /* Database handle. */
  const char *zSql,         /* UTF-8 encoded SQL statement. */
  int nBytes,               /* Length of zSql in bytes. */
  u32 prepFlags,            /* Zero or more SQLITE_PREPARE_* flags */
  Vdbe *pOld,               /* VM being reprepared */
  sqlite3_stmt **ppStmt,    /* OUT: A pointer to the prepared statement */
  const char **pzTail       /* OUT: End of parsed string */
){
  int rc;
  int cnt = 0;

#ifdef SQLITE_ENABLE_API_ARMOR
  if( ppStmt==0 ) return SQLITE_MISUSE_BKPT;
#endif
  *ppStmt = 0;
  if( !FUNC6(db)||zSql==0 ){
    return SQLITE_MISUSE_BKPT;
  }
  FUNC7(db->mutex);
  FUNC2(db);
  do{
    /* Make multiple attempts to compile the SQL, until it either succeeds
    ** or encounters a permanent error.  A schema problem after one schema
    ** reset is considered a permanent error. */
    rc = FUNC4(db, zSql, nBytes, prepFlags, pOld, ppStmt, pzTail);
    FUNC0( rc==SQLITE_OK || *ppStmt==0 );
  }while( rc==SQLITE_ERROR_RETRY
       || (rc==SQLITE_SCHEMA && (FUNC5(db,-1), cnt++)==0) );
  FUNC3(db);
  rc = FUNC1(db, rc);
  FUNC0( (rc&db->errMask)==rc );
  FUNC8(db->mutex);
  return rc;
}