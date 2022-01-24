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
 scalar_t__ stderr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(void *p)
{
     FUNC0(xmlGenericErrorContext,
	     "Memory tag error occurs :%p \n\t bye\n", p);
#ifdef MEM_LIST
     if (stderr)
     xmlMemDisplay(stderr);
#endif
}