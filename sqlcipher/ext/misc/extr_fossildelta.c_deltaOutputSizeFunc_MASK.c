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
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *aDelta;  int nDelta;       /* The input delta (D) */
  int nOut;                              /* Size of output */
  FUNC0( argc==1 );
  if( FUNC6(argv[0])==SQLITE_NULL ) return;
  nDelta = FUNC5(argv[0]);
  aDelta = (const char*)FUNC4(argv[0]);

  /* Figure out the size of the output */
  nOut = FUNC1(aDelta, nDelta);
  if( nOut<0 ){
    FUNC2(context, "corrupt fossil delta", -1);
    return;
  }else{
    FUNC3(context, nOut);
  }
}