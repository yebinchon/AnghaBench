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
 int JS_REGEXP_G ; 
 int JS_REGEXP_I ; 
 int JS_REGEXP_M ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(const char *prog, int flags)
{
	FUNC0('/');
	FUNC1(prog);
	FUNC0('/');
	if (flags & JS_REGEXP_G) FUNC0('g');
	if (flags & JS_REGEXP_I) FUNC0('i');
	if (flags & JS_REGEXP_M) FUNC0('m');
}