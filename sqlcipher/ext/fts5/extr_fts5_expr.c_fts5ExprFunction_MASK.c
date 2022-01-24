#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_14__ {scalar_t__ xNext; } ;
struct TYPE_13__ {int /*<<< orphan*/  nCol; } ;
struct TYPE_12__ {TYPE_9__* pRoot; } ;
typedef  int /*<<< orphan*/  Fts5Global ;
typedef  TYPE_1__ Fts5Expr ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 char* FUNC0 (TYPE_2__*,TYPE_9__*) ; 
 char* FUNC1 (TYPE_2__*,char const*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const**,TYPE_2__**,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char const*,TYPE_1__**,char**) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ FUNC8 (int) ; 
 char* FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(
  sqlite3_context *pCtx,          /* Function call context */
  int nArg,                       /* Number of args */
  sqlite3_value **apVal,          /* Function arguments */
  int bTcl
){
  Fts5Global *pGlobal = (Fts5Global*)FUNC14(pCtx);
  sqlite3 *db = FUNC6(pCtx);
  const char *zExpr = 0;
  char *zErr = 0;
  Fts5Expr *pExpr = 0;
  int rc;
  int i;

  const char **azConfig;          /* Array of arguments for Fts5Config */
  const char *zNearsetCmd = "nearset";
  int nConfig;                    /* Size of azConfig[] */
  Fts5Config *pConfig = 0;
  int iArg = 1;

  if( nArg<1 ){
    zErr = FUNC9("wrong number of arguments to function %s",
        bTcl ? "fts5_expr_tcl" : "fts5_expr"
    );
    FUNC10(pCtx, zErr, -1);
    FUNC7(zErr);
    return;
  }

  if( bTcl && nArg>1 ){
    zNearsetCmd = (const char*)FUNC15(apVal[1]);
    iArg = 2;
  }

  nConfig = 3 + (nArg-iArg);
  azConfig = (const char**)FUNC8(sizeof(char*) * nConfig);
  if( azConfig==0 ){
    FUNC12(pCtx);
    return;
  }
  azConfig[0] = 0;
  azConfig[1] = "main";
  azConfig[2] = "tbl";
  for(i=3; iArg<nArg; iArg++){
    azConfig[i++] = (const char*)FUNC15(apVal[iArg]);
  }

  zExpr = (const char*)FUNC15(apVal[0]);

  rc = FUNC3(pGlobal, db, nConfig, azConfig, &pConfig, &zErr);
  if( rc==SQLITE_OK ){
    rc = FUNC5(pConfig, pConfig->nCol, zExpr, &pExpr, &zErr);
  }
  if( rc==SQLITE_OK ){
    char *zText;
    if( pExpr->pRoot->xNext==0 ){
      zText = FUNC9("");
    }else if( bTcl ){
      zText = FUNC1(pConfig, zNearsetCmd, pExpr->pRoot);
    }else{
      zText = FUNC0(pConfig, pExpr->pRoot);
    }
    if( zText==0 ){
      rc = SQLITE_NOMEM;
    }else{
      FUNC13(pCtx, zText, -1, SQLITE_TRANSIENT);
      FUNC7(zText);
    }
  }

  if( rc!=SQLITE_OK ){
    if( zErr ){
      FUNC10(pCtx, zErr, -1);
      FUNC7(zErr);
    }else{
      FUNC11(pCtx, rc);
    }
  }
  FUNC7((void *)azConfig);
  FUNC2(pConfig);
  FUNC4(pExpr);
}