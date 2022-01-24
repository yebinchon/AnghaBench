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
typedef  scalar_t__ i64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 char FUNC3 (char const) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(sqlite3_context *context, int argc, sqlite3_value **argv){
  char *z1;
  const char *z2;
  int i, n;
  FUNC0(argc);
  z2 = (char*)FUNC6(argv[0]);
  n = FUNC5(argv[0]);
  /* Verify that the call to _bytes() does not invalidate the _text() pointer */
  FUNC1( z2==(char*)FUNC6(argv[0]) );
  if( z2 ){
    z1 = FUNC2(context, ((i64)n)+1);
    if( z1 ){
      for(i=0; i<n; i++){
        z1[i] = FUNC3(z2[i]);
      }
      FUNC4(context, z1, n, sqlite3_free);
    }
  }
}