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
typedef  scalar_t__ UErrorCode ;
typedef  char UChar ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_STATIC ; 
 scalar_t__ U_BUFFER_OVERFLOW_ERROR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,int,char const*,int,char const*,scalar_t__*) ; 
 int FUNC12 (char*,int,char const*,int,char const*,scalar_t__*) ; 
 int /*<<< orphan*/  xFree ; 

__attribute__((used)) static void FUNC13(sqlite3_context *p, int nArg, sqlite3_value **apArg){
  const UChar *zInput;            /* Pointer to input string */
  UChar *zOutput = 0;             /* Pointer to output buffer */
  int nInput;                     /* Size of utf-16 input string in bytes */
  int nOut;                       /* Size of output buffer in bytes */
  int cnt;
  int bToUpper;                   /* True for toupper(), false for tolower() */
  UErrorCode status;
  const char *zLocale = 0;

  FUNC1(nArg==1 || nArg==2);
  bToUpper = (FUNC7(p)!=0);
  if( nArg==2 ){
    zLocale = (const char *)FUNC9(apArg[1]);
  }

  zInput = FUNC10(apArg[0]);
  if( !zInput ){
    return;
  }
  nOut = nInput = FUNC8(apArg[0]);
  if( nOut==0 ){
    FUNC6(p, "", 0, SQLITE_STATIC);
    return;
  }

  for(cnt=0; cnt<2; cnt++){
    UChar *zNew = FUNC4(zOutput, nOut);
    if( zNew==0 ){
      FUNC3(zOutput);
      FUNC5(p);
      return;
    }
    zOutput = zNew;
    status = U_ZERO_ERROR;
    if( bToUpper ){
      nOut = 2*FUNC12(zOutput,nOut/2,zInput,nInput/2,zLocale,&status);
    }else{
      nOut = 2*FUNC11(zOutput,nOut/2,zInput,nInput/2,zLocale,&status);
    }

    if( FUNC0(status) ){
      FUNC6(p, zOutput, nOut, xFree);
    }else if( status==U_BUFFER_OVERFLOW_ERROR ){
      FUNC1( cnt==0 );
      continue;
    }else{
      FUNC2(p, bToUpper ? "u_strToUpper" : "u_strToLower", status);
    }
    return;
  }
  FUNC1( 0 );     /* Unreachable */
}