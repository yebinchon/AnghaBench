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
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int,char const*,int,char*) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *aOrig;   int nOrig;        /* The X input */
  const char *aDelta;  int nDelta;       /* The input delta (D) */
  char *aOut;          int nOut, nOut2;  /* The output */

  FUNC0( argc==2 );
  if( FUNC10(argv[0])==SQLITE_NULL ) return;
  if( FUNC10(argv[1])==SQLITE_NULL ) return;
  nOrig = FUNC9(argv[0]);
  aOrig = (const char*)FUNC8(argv[0]);
  nDelta = FUNC9(argv[1]);
  aDelta = (const char*)FUNC8(argv[1]);

  /* Figure out the size of the output */
  nOut = FUNC2(aDelta, nDelta);
  if( nOut<0 ){
    FUNC6(context, "corrupt fossil delta", -1);
    return;
  }
  aOut = FUNC4((sqlite3_int64)nOut+1);
  if( aOut==0 ){
    FUNC7(context);
  }else{
    nOut2 = FUNC1(aOrig, nOrig, aDelta, nDelta, aOut);
    if( nOut2!=nOut ){
      FUNC3(aOut);
      FUNC6(context, "corrupt fossil delta", -1);
    }else{
      FUNC5(context, aOut, nOut, sqlite3_free);
    }
  }
}