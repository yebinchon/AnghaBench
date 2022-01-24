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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void *pCtx, int rc, const char *z){
  FUNC2(rc);
  /* fprintf(stderr, "lsm: rc=%d \"%s\"\n", rc, z); */
  if( pCtx ) FUNC1(stderr, "%s: ", (char *)pCtx);
  FUNC1(stderr, "%s\n", z);
  FUNC0(stderr);
}