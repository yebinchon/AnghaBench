#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_6__ {int /*<<< orphan*/  pExpr; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  Fts3Table ;
typedef  TYPE_2__ Fts3Cursor ;

/* Variables and functions */
 char* FTS3_MATCHINFO_DEFAULT ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(
  sqlite3_context *pContext,      /* Function call context */
  Fts3Cursor *pCsr,               /* FTS3 table cursor */
  const char *zArg                /* Second arg to matchinfo() function */
){
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  const char *zFormat;

  if( zArg ){
    zFormat = zArg;
  }else{
    zFormat = FTS3_MATCHINFO_DEFAULT;
  }

  if( !pCsr->pExpr ){
    FUNC2(pContext, "", 0, SQLITE_STATIC);
    return;
  }else{
    /* Retrieve matchinfo() data. */
    FUNC0(pContext, pCsr, zFormat);
    FUNC1(pTab);
  }
}