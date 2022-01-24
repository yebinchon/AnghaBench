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
typedef  scalar_t__ Rune ;

/* Variables and functions */
 scalar_t__ NAN ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(js_State *J)
{
	const char *s = FUNC0(J, 0);
	int pos = FUNC3(J, 1);
	Rune rune = FUNC2(J, s, pos);
	if (rune > 0)
		FUNC1(J, rune);
	else
		FUNC1(J, NAN);
}