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

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *aOrig; int nOrig;  /* old blob */
  const char *aNew;  int nNew;   /* new blob */
  char *aOut;        int nOut;   /* output delta */

  FUNC0( argc==2 );
  if( FUNC9(argv[0])==SQLITE_NULL ) return;
  if( FUNC9(argv[1])==SQLITE_NULL ) return;
  nOrig = FUNC8(argv[0]);
  aOrig = (const char*)FUNC7(argv[0]);
  nNew = FUNC8(argv[1]);
  aNew = (const char*)FUNC7(argv[1]);
  aOut = FUNC3(nNew+70);
  if( aOut==0 ){
    FUNC6(context);
  }else{
    nOut = FUNC1(aOrig, nOrig, aNew, nNew, aOut);
    if( nOut<0 ){
      FUNC2(aOut);
      FUNC5(context, "cannot create fossil delta", -1);
    }else{
      FUNC4(context, aOut, nOut, sqlite3_free);
    }
  }
}