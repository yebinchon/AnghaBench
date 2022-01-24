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
typedef  int /*<<< orphan*/  Fts3Cursor ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *pContext,      /* SQLite function call context */
  int nVal,                       /* Size of apVal[] array */
  sqlite3_value **apVal           /* Array of arguments */
){
  Fts3Cursor *pCsr;               /* Cursor handle passed through apVal[0] */
  const char *zStart = "<b>";
  const char *zEnd = "</b>";
  const char *zEllipsis = "<b>...</b>";
  int iCol = -1;
  int nToken = 15;                /* Default number of tokens in snippet */

  /* There must be at least one argument passed to this function (otherwise
  ** the non-overloaded version would have been called instead of this one).
  */
  FUNC0( nVal>=1 );

  if( nVal>6 ){
    FUNC4(pContext, 
        "wrong number of arguments to function snippet()", -1);
    return;
  }
  if( FUNC2(pContext, "snippet", apVal[0], &pCsr) ) return;

  switch( nVal ){
    case 6: nToken = FUNC7(apVal[5]);
    case 5: iCol = FUNC7(apVal[4]);
    case 4: zEllipsis = (const char*)FUNC8(apVal[3]);
    case 3: zEnd = (const char*)FUNC8(apVal[2]);
    case 2: zStart = (const char*)FUNC8(apVal[1]);
  }
  if( !zEllipsis || !zEnd || !zStart ){
    FUNC5(pContext);
  }else if( nToken==0 ){
    FUNC6(pContext, "", -1, SQLITE_STATIC);
  }else if( SQLITE_OK==FUNC1(pContext, pCsr) ){
    FUNC3(pContext, pCsr, zStart, zEnd, zEllipsis, iCol, nToken);
  }
}