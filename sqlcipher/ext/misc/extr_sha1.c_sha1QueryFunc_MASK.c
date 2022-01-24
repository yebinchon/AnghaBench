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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  double sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  SHA1Context ;

/* Variables and functions */
#define  SQLITE_BLOB 132 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
 scalar_t__ SQLITE_ROW ; 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,double*,int) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 double FUNC9 (int /*<<< orphan*/ *,int) ; 
 double FUNC10 (int /*<<< orphan*/ *,int) ; 
 unsigned char* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 char* FUNC17 (char*,char const*,...) ; 
 int FUNC18 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (char const*) ; 

__attribute__((used)) static void FUNC26(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3 *db = FUNC13(context);
  const char *zSql = (const char*)FUNC24(argv[0]);
  sqlite3_stmt *pStmt = 0;
  int nCol;                   /* Number of columns in the result set */
  int i;                      /* Loop counter */
  int rc;
  int n;
  const char *z;
  SHA1Context cx;
  char zOut[44];

  FUNC0( argc==1 );
  if( zSql==0 ) return;
  FUNC2(&cx);
  while( zSql[0] ){
    rc = FUNC18(db, zSql, -1, &pStmt, &zSql);
    if( rc ){
      char *zMsg = FUNC17("error SQL statement [%s]: %s",
                                   zSql, FUNC14(db));
      FUNC15(pStmt);
      FUNC19(context, zMsg, -1);
      FUNC16(zMsg);
      return;
    }
    if( !FUNC23(pStmt) ){
      char *zMsg = FUNC17("non-query: [%s]", FUNC21(pStmt));
      FUNC15(pStmt);
      FUNC19(context, zMsg, -1);
      FUNC16(zMsg);
      return;
    }
    nCol = FUNC8(pStmt);
    z = FUNC21(pStmt);
    n = (int)FUNC25(z);
    FUNC4(&cx,"S%d:",n);
    FUNC3(&cx,(unsigned char*)z,n);

    /* Compute a hash over the result of the query */
    while( SQLITE_ROW==FUNC22(pStmt) ){
      FUNC3(&cx,(const unsigned char*)"R",1);
      for(i=0; i<nCol; i++){
        switch( FUNC12(pStmt,i) ){
          case SQLITE_NULL: {
            FUNC3(&cx, (const unsigned char*)"N",1);
            break;
          }
          case SQLITE_INTEGER: {
            sqlite3_uint64 u;
            int j;
            unsigned char x[9];
            sqlite3_int64 v = FUNC10(pStmt,i);
            FUNC5(&u, &v, 8);
            for(j=8; j>=1; j--){
              x[j] = u & 0xff;
              u >>= 8;
            }
            x[0] = 'I';
            FUNC3(&cx, x, 9);
            break;
          }
          case SQLITE_FLOAT: {
            sqlite3_uint64 u;
            int j;
            unsigned char x[9];
            double r = FUNC9(pStmt,i);
            FUNC5(&u, &r, 8);
            for(j=8; j>=1; j--){
              x[j] = u & 0xff;
              u >>= 8;
            }
            x[0] = 'F';
            FUNC3(&cx,x,9);
            break;
          }
          case SQLITE_TEXT: {
            int n2 = FUNC7(pStmt, i);
            const unsigned char *z2 = FUNC11(pStmt, i);
            FUNC4(&cx,"T%d:",n2);
            FUNC3(&cx, z2, n2);
            break;
          }
          case SQLITE_BLOB: {
            int n2 = FUNC7(pStmt, i);
            const unsigned char *z2 = FUNC6(pStmt, i);
            FUNC4(&cx,"B%d:",n2);
            FUNC3(&cx, z2, n2);
            break;
          }
        }
      }
    }
    FUNC15(pStmt);
  }
  FUNC1(&cx, zOut);
  FUNC20(context, zOut, 40, SQLITE_TRANSIENT);
}