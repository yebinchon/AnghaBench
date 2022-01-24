#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int ynVar ;
typedef  scalar_t__ u32 ;
struct TYPE_11__ {int* aLimit; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int i64 ;
struct TYPE_10__ {char* zToken; } ;
struct TYPE_13__ {int iColumn; TYPE_1__ u; } ;
struct TYPE_12__ {int nVar; int /*<<< orphan*/  pVList; TYPE_2__* db; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 int EP_IntValue ; 
 int EP_Reduced ; 
 int EP_TokenOnly ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 size_t SQLITE_LIMIT_VARIABLE_NUMBER ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char const*,scalar_t__,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(Parse *pParse, Expr *pExpr, u32 n){
  sqlite3 *db = pParse->db;
  const char *z;
  ynVar x;

  if( pExpr==0 ) return;
  FUNC1( !FUNC0(pExpr, EP_IntValue|EP_Reduced|EP_TokenOnly) );
  z = pExpr->u.zToken;
  FUNC1( z!=0 );
  FUNC1( z[0]!=0 );
  FUNC1( n==(u32)FUNC4(z) );
  if( z[1]==0 ){
    /* Wildcard of the form "?".  Assign the next variable number */
    FUNC1( z[0]=='?' );
    x = (ynVar)(++pParse->nVar);
  }else{
    int doAdd = 0;
    if( z[0]=='?' ){
      /* Wildcard of the form "?nnn".  Convert "nnn" to an integer and
      ** use it as the variable number */
      i64 i;
      int bOk;
      if( n==2 ){ /*OPTIMIZATION-IF-TRUE*/
        i = z[1]-'0';  /* The common case of ?N for a single digit N */
        bOk = 1;
      }else{
        bOk = 0==FUNC2(&z[1], &i, n-1, SQLITE_UTF8);
      }
      FUNC8( i==0 );
      FUNC8( i==1 );
      FUNC8( i==db->aLimit[SQLITE_LIMIT_VARIABLE_NUMBER]-1 );
      FUNC8( i==db->aLimit[SQLITE_LIMIT_VARIABLE_NUMBER] );
      if( bOk==0 || i<1 || i>db->aLimit[SQLITE_LIMIT_VARIABLE_NUMBER] ){
        FUNC3(pParse, "variable number must be between ?1 and ?%d",
            db->aLimit[SQLITE_LIMIT_VARIABLE_NUMBER]);
        return;
      }
      x = (ynVar)i;
      if( x>pParse->nVar ){
        pParse->nVar = (int)x;
        doAdd = 1;
      }else if( FUNC7(pParse->pVList, x)==0 ){
        doAdd = 1;
      }
    }else{
      /* Wildcards like ":aaa", "$aaa" or "@aaa".  Reuse the same variable
      ** number as the prior appearance of the same name, or if the name
      ** has never appeared before, reuse the same variable number
      */
      x = (ynVar)FUNC6(pParse->pVList, z, n);
      if( x==0 ){
        x = (ynVar)(++pParse->nVar);
        doAdd = 1;
      }
    }
    if( doAdd ){
      pParse->pVList = FUNC5(db, pParse->pVList, z, n, x);
    }
  }
  pExpr->iColumn = x;
  if( x>db->aLimit[SQLITE_LIMIT_VARIABLE_NUMBER] ){
    FUNC3(pParse, "too many SQL variables");
  }
}