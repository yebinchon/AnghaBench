#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_7__ {scalar_t__ rSub; scalar_t__ rIns; scalar_t__ rDel; int /*<<< orphan*/  zClassName; } ;
typedef  TYPE_1__ amatch_vtab ;
struct TYPE_8__ {int iLang; scalar_t__ rCost; void* nTo; int /*<<< orphan*/ * zTo; int /*<<< orphan*/ * zFrom; void* nFrom; } ;
typedef  TYPE_2__ amatch_rule ;
typedef  void* amatch_len ;
typedef  scalar_t__ amatch_cost ;

/* Variables and functions */
 scalar_t__ AMATCH_MX_COST ; 
 scalar_t__ AMATCH_MX_LANGID ; 
 int AMATCH_MX_LENGTH ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC5 (int) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(
  amatch_vtab *p,                 /* Fuzzer virtual table handle */
  sqlite3_stmt *pStmt,            /* Base rule on statements current row */
  amatch_rule **ppRule,           /* OUT: New rule object */
  char **pzErr                    /* OUT: Error message */
){
  sqlite3_int64 iLang = FUNC3(pStmt, 0);
  const char *zFrom = (const char *)FUNC4(pStmt, 1);
  const char *zTo = (const char *)FUNC4(pStmt, 2);
  amatch_cost rCost = FUNC2(pStmt, 3);

  int rc = SQLITE_OK;             /* Return code */
  int nFrom;                      /* Size of string zFrom, in bytes */
  int nTo;                        /* Size of string zTo, in bytes */
  amatch_rule *pRule = 0;         /* New rule object to return */

  if( zFrom==0 ) zFrom = "";
  if( zTo==0 ) zTo = "";
  nFrom = (int)FUNC8(zFrom);
  nTo = (int)FUNC8(zTo);

  /* Silently ignore null transformations */
  if( FUNC7(zFrom, zTo)==0 ){
    if( zFrom[0]=='?' && zFrom[1]==0 ){
      if( p->rSub==0 || p->rSub>rCost ) p->rSub = rCost;
    }
    *ppRule = 0;
    return SQLITE_OK;
  }

  if( rCost<=0 || rCost>AMATCH_MX_COST ){
    *pzErr = FUNC6("%s: cost must be between 1 and %d", 
        p->zClassName, AMATCH_MX_COST
    );
    rc = SQLITE_ERROR;
  }else
  if( nFrom>AMATCH_MX_LENGTH || nTo>AMATCH_MX_LENGTH ){
    *pzErr = FUNC6("%s: maximum string length is %d", 
        p->zClassName, AMATCH_MX_LENGTH
    );
    rc = SQLITE_ERROR;    
  }else
  if( iLang<0 || iLang>AMATCH_MX_LANGID ){
    *pzErr = FUNC6("%s: iLang must be between 0 and %d", 
        p->zClassName, AMATCH_MX_LANGID
    );
    rc = SQLITE_ERROR;    
  }else
  if( FUNC7(zFrom,"")==0 && FUNC7(zTo,"?")==0 ){
    if( p->rIns==0 || p->rIns>rCost ) p->rIns = rCost;
  }else
  if( FUNC7(zFrom,"?")==0 && FUNC7(zTo,"")==0 ){
    if( p->rDel==0 || p->rDel>rCost ) p->rDel = rCost;
  }else
  {
    pRule = FUNC5( sizeof(*pRule) + nFrom + nTo );
    if( pRule==0 ){
      rc = SQLITE_NOMEM;
    }else{
      FUNC1(pRule, 0, sizeof(*pRule));
      pRule->zFrom = &pRule->zTo[nTo+1];
      pRule->nFrom = (amatch_len)nFrom;
      FUNC0(pRule->zFrom, zFrom, nFrom+1);
      FUNC0(pRule->zTo, zTo, nTo+1);
      pRule->nTo = (amatch_len)nTo;
      pRule->rCost = rCost;
      pRule->iLang = (int)iLang;
    }
  }

  *ppRule = pRule;
  return rc;
}