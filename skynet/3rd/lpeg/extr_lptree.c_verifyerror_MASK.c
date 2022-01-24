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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3 (lua_State *L, int *passed, int npassed) {
  int i, j;
  for (i = npassed - 1; i >= 0; i--) {  /* search for a repetition */
    for (j = i - 1; j >= 0; j--) {
      if (passed[i] == passed[j]) {
        FUNC1(L, -1, passed[i]);  /* get rule's key */
        return FUNC0(L, "rule '%s' may be left recursive", FUNC2(L, -1));
      }
    }
  }
  return FUNC0(L, "too many left calls in grammar");
}