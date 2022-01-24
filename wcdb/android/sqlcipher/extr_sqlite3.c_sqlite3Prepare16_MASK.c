#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF16NATIVE ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_1__*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (void const*,int) ; 
 char* FUNC5 (TYPE_1__*,void const*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
  sqlite3 *db,              /* Database handle. */ 
  const void *zSql,         /* UTF-16 encoded SQL statement. */
  int nBytes,               /* Length of zSql in bytes. */
  u32 prepFlags,            /* Zero or more SQLITE_PREPARE_* flags */
  sqlite3_stmt **ppStmt,    /* OUT: A pointer to the prepared statement */
  const void **pzTail       /* OUT: End of parsed string */
){
  /* This function currently works by first transforming the UTF-16
  ** encoded string to UTF-8, then invoking sqlite3_prepare(). The
  ** tricky bit is figuring out the pointer to return in *pzTail.
  */
  char *zSql8;
  const char *zTail8 = 0;
  int rc = SQLITE_OK;

#ifdef SQLITE_ENABLE_API_ARMOR
  if( ppStmt==0 ) return SQLITE_MISUSE_BKPT;
#endif
  *ppStmt = 0;
  if( !FUNC3(db)||zSql==0 ){
    return SQLITE_MISUSE_BKPT;
  }
  if( nBytes>=0 ){
    int sz;
    const char *z = (const char*)zSql;
    for(sz=0; sz<nBytes && (z[sz]!=0 || z[sz+1]!=0); sz += 2){}
    nBytes = sz;
  }
  FUNC7(db->mutex);
  zSql8 = FUNC5(db, zSql, nBytes, SQLITE_UTF16NATIVE);
  if( zSql8 ){
    rc = FUNC2(db, zSql8, -1, prepFlags, 0, ppStmt, &zTail8);
  }

  if( zTail8 && pzTail ){
    /* If sqlite3_prepare returns a tail pointer, we calculate the
    ** equivalent pointer into the UTF-16 string by counting the unicode
    ** characters between zSql8 and zTail8, and then returning a pointer
    ** the same number of characters into the UTF-16 string.
    */
    int chars_parsed = FUNC6(zSql8, (int)(zTail8-zSql8));
    *pzTail = (u8 *)zSql + FUNC4(zSql, chars_parsed);
  }
  FUNC1(db, zSql8); 
  rc = FUNC0(db, rc);
  FUNC8(db->mutex);
  return rc;
}