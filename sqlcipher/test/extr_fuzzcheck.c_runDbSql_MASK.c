#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
#define  SQLITE_BLOB 132 
 int SQLITE_DONE ; 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
#define  SQLITE_TEXT 128 
 int eVerbosity ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC13(sqlite3 *db, const char *zSql){
  int rc;
  sqlite3_stmt *pStmt;
  while( FUNC1(zSql[0]&0x7f) ) zSql++;
  if( zSql[0]==0 ) return SQLITE_OK;
  if( eVerbosity>=4 ){
    FUNC2("RUNNING-SQL: [%s]\n", zSql);
    FUNC0(stdout);
  }
  rc = FUNC11(db, zSql, -1, &pStmt, 0);
  if( rc==SQLITE_OK ){
    while( (rc = FUNC12(pStmt))==SQLITE_ROW ){
      if( eVerbosity>=5 ){
        int j;
        for(j=0; j<FUNC6(pStmt); j++){
          if( j ) FUNC2(",");
          switch( FUNC8(pStmt, j) ){
            case SQLITE_NULL: {
              FUNC2("NULL");
              break;
            }
            case SQLITE_INTEGER:
            case SQLITE_FLOAT: {
              FUNC2("%s", FUNC7(pStmt, j));
              break;
            }
            case SQLITE_BLOB: {
              int n = FUNC5(pStmt, j);
              int i;
              const unsigned char *a;
              a = (const unsigned char*)FUNC4(pStmt, j);
              FUNC2("x'");
              for(i=0; i<n; i++){
                FUNC2("%02x", a[i]);
              }
              FUNC2("'");
              break;
            }
            case SQLITE_TEXT: {
              int n = FUNC5(pStmt, j);
              int i;
              const unsigned char *a;
              a = (const unsigned char*)FUNC4(pStmt, j);
              FUNC2("'");
              for(i=0; i<n; i++){
                if( a[i]=='\'' ){
                  FUNC2("''");
                }else{
                  FUNC3(a[i]);
                }
              }
              FUNC2("'");
              break;
            }
          } /* End switch() */
        } /* End for() */
        FUNC2("\n");
        FUNC0(stdout);
      } /* End if( eVerbosity>=5 ) */
    } /* End while( SQLITE_ROW */
    if( rc!=SQLITE_DONE && eVerbosity>=4 ){
      FUNC2("SQL-ERROR: (%d) %s\n", rc, FUNC9(db));
      FUNC0(stdout);
    }
  }else if( eVerbosity>=4 ){
    FUNC2("SQL-ERROR (%d): %s\n", rc, FUNC9(db));
    FUNC0(stdout);    
  } /* End if( SQLITE_OK ) */
  return FUNC10(pStmt);
}