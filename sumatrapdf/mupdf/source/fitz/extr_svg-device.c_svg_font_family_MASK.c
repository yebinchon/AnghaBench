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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char const*,char) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, char buf[], int size, const char *name)
{
	/* Remove "ABCDEF+" prefix and "-Bold" suffix. */
	char *p = FUNC1(name, '+');
	if (p) FUNC0(buf, p+1, size);
	else FUNC0(buf, name, size);
	p = FUNC2(buf, '-');
	if (p) *p = 0;
}