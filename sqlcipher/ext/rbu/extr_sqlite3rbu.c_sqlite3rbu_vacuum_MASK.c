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
typedef  int /*<<< orphan*/  sqlite3rbu ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (char const*) ; 

sqlite3rbu *FUNC4(
  const char *zTarget, 
  const char *zState
){
  if( zTarget==0 ){ return FUNC2(); }
  if( zState ){
    int n = FUNC3(zState);
    if( n>=7 && 0==FUNC0("-vactmp", &zState[n-7], 7) ){
      return FUNC2();
    }
  }
  /* TODO: Check that both arguments are non-NULL */
  return FUNC1(0, zTarget, zState);
}