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
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(js_State *J)
{
	const char *source = FUNC2(J, 1);
	const char *filename = FUNC0(J, 2) ? FUNC2(J, 2) : "[string]";
	FUNC1(J, filename, source);
}