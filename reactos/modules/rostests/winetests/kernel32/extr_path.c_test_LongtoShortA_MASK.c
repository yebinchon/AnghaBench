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
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int MAX_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(CHAR *teststr,const CHAR *goodstr,
                              const CHAR *ext,const CHAR *errstr) {
  CHAR dir[MAX_PATH],eight[MAX_PATH],three[MAX_PATH];

  FUNC2(teststr,dir,eight,three);
  FUNC1(FUNC0(dir,goodstr)==0,
     "GetShortPathNameA returned '%s' instead of '%s'\n",dir,goodstr);
  FUNC1(FUNC0(three,ext)==0,
     "GetShortPathNameA returned '%s' with incorrect extension\n",three);
}