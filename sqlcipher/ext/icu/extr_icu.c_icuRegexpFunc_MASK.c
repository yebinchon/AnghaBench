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
typedef  int /*<<< orphan*/  URegularExpression ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UChar ;
typedef  scalar_t__ UBool ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icuRegexpDelete ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(sqlite3_context *p, int nArg, sqlite3_value **apArg){
  UErrorCode status = U_ZERO_ERROR;
  URegularExpression *pExpr;
  UBool res;
  const UChar *zString = FUNC6(apArg[1]);

  (void)nArg;  /* Unused parameter */

  /* If the left hand side of the regexp operator is NULL, 
  ** then the result is also NULL. 
  */
  if( !zString ){
    return;
  }

  pExpr = FUNC3(p, 0);
  if( !pExpr ){
    const UChar *zPattern = FUNC6(apArg[0]);
    if( !zPattern ){
      return;
    }
    pExpr = FUNC8(zPattern, -1, 0, 0, &status);

    if( FUNC0(status) ){
      FUNC5(p, 0, pExpr, icuRegexpDelete);
    }else{
      FUNC1(!pExpr);
      FUNC2(p, "uregex_open", status);
      return;
    }
  }

  /* Configure the text that the regular expression operates on. */
  FUNC9(pExpr, zString, -1, &status);
  if( !FUNC0(status) ){
    FUNC2(p, "uregex_setText", status);
    return;
  }

  /* Attempt the match */
  res = FUNC7(pExpr, 0, &status);
  if( !FUNC0(status) ){
    FUNC2(p, "uregex_matches", status);
    return;
  }

  /* Set the text that the regular expression operates on to a NULL
  ** pointer. This is not really necessary, but it is tidier than 
  ** leaving the regular expression object configured with an invalid
  ** pointer after this function returns.
  */
  FUNC9(pExpr, 0, 0, &status);

  /* Return 1 or 0. */
  FUNC4(p, res ? 1 : 0);
}