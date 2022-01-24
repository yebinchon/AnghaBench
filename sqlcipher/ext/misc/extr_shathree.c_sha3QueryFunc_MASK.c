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
typedef  int /*<<< orphan*/  SHA3Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
#define  SQLITE_BLOB 132 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
 scalar_t__ SQLITE_ROW ; 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,double*,int) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 double FUNC8 (int /*<<< orphan*/ *,int) ; 
 double FUNC9 (int /*<<< orphan*/ *,int) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (char*,char const*,...) ; 
 int FUNC17 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (char const*) ; 

__attribute__((used)) static void FUNC26(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3 *db = FUNC12(context);
  const char *zSql = (const char*)FUNC24(argv[0]);
  sqlite3_stmt *pStmt = 0;
  int nCol;                   /* Number of columns in the result set */
  int i;                      /* Loop counter */
  int rc;
  int n;
  const char *z;
  SHA3Context cx;
  int iSize;

  if( argc==1 ){
    iSize = 256;
  }else{
    iSize = FUNC23(argv[1]);
    if( iSize!=224 && iSize!=256 && iSize!=384 && iSize!=512 ){
      FUNC19(context, "SHA3 size should be one of: 224 256 "
                                    "384 512", -1);
      return;
    }
  }
  if( zSql==0 ) return;
  FUNC1(&cx, iSize);
  while( zSql[0] ){
    rc = FUNC17(db, zSql, -1, &pStmt, &zSql);
    if( rc ){
      char *zMsg = FUNC16("error SQL statement [%s]: %s",
                                   zSql, FUNC13(db));
      FUNC14(pStmt);
      FUNC19(context, zMsg, -1);
      FUNC15(zMsg);
      return;
    }
    if( !FUNC22(pStmt) ){
      char *zMsg = FUNC16("non-query: [%s]", FUNC20(pStmt));
      FUNC14(pStmt);
      FUNC19(context, zMsg, -1);
      FUNC15(zMsg);
      return;
    }
    nCol = FUNC7(pStmt);
    z = FUNC20(pStmt);
    n = (int)FUNC25(z);
    FUNC3(&cx,"S%d:",n);
    FUNC2(&cx,(unsigned char*)z,n);

    /* Compute a hash over the result of the query */
    while( SQLITE_ROW==FUNC21(pStmt) ){
      FUNC2(&cx,(const unsigned char*)"R",1);
      for(i=0; i<nCol; i++){
        switch( FUNC11(pStmt,i) ){
          case SQLITE_NULL: {
            FUNC2(&cx, (const unsigned char*)"N",1);
            break;
          }
          case SQLITE_INTEGER: {
            sqlite3_uint64 u;
            int j;
            unsigned char x[9];
            sqlite3_int64 v = FUNC9(pStmt,i);
            FUNC4(&u, &v, 8);
            for(j=8; j>=1; j--){
              x[j] = u & 0xff;
              u >>= 8;
            }
            x[0] = 'I';
            FUNC2(&cx, x, 9);
            break;
          }
          case SQLITE_FLOAT: {
            sqlite3_uint64 u;
            int j;
            unsigned char x[9];
            double r = FUNC8(pStmt,i);
            FUNC4(&u, &r, 8);
            for(j=8; j>=1; j--){
              x[j] = u & 0xff;
              u >>= 8;
            }
            x[0] = 'F';
            FUNC2(&cx,x,9);
            break;
          }
          case SQLITE_TEXT: {
            int n2 = FUNC6(pStmt, i);
            const unsigned char *z2 = FUNC10(pStmt, i);
            FUNC3(&cx,"T%d:",n2);
            FUNC2(&cx, z2, n2);
            break;
          }
          case SQLITE_BLOB: {
            int n2 = FUNC6(pStmt, i);
            const unsigned char *z2 = FUNC5(pStmt, i);
            FUNC3(&cx,"B%d:",n2);
            FUNC2(&cx, z2, n2);
            break;
          }
        }
      }
    }
    FUNC14(pStmt);
  }
  FUNC18(context, FUNC0(&cx), iSize/8, SQLITE_TRANSIENT);
}