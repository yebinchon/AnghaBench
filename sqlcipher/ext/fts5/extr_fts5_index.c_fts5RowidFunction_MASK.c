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
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  i64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *pCtx,          /* Function call context */
  int nArg,                       /* Number of args (always 2) */
  sqlite3_value **apVal           /* Function arguments */
){
  const char *zArg;
  if( nArg==0 ){
    FUNC1(pCtx, "should be: fts5_rowid(subject, ....)", -1);
  }else{
    zArg = (const char*)FUNC5(apVal[0]);
    if( 0==FUNC3(zArg, "segment") ){
      i64 iRowid;
      int segid, pgno;
      if( nArg!=3 ){
        FUNC1(pCtx, 
            "should be: fts5_rowid('segment', segid, pgno))", -1
        );
      }else{
        segid = FUNC4(apVal[1]);
        pgno = FUNC4(apVal[2]);
        iRowid = FUNC0(segid, pgno);
        FUNC2(pCtx, iRowid);
      }
    }else{
      FUNC1(pCtx, 
        "first arg to fts5_rowid() must be 'segment'" , -1
      );
    }
  }
}