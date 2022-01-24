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
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static char *FUNC6(fz_context *ctx, fz_xml *root)
{
	fz_xml *node;
	size_t i = 0, n = 1;
	char *s;
	for (node = FUNC1(root); node; node = FUNC2(node))
	{
		const char *text = FUNC3(node);
		n += text ? FUNC5(text) : 0;
	}
	s = FUNC0(ctx, n);
	for (node = FUNC1(root); node; node = FUNC2(node))
	{
		const char *text = FUNC3(node);
		if (text)
		{
			n = FUNC5(text);
			FUNC4(s+i, text, n);
			i += n;
		}
	}
	s[i] = 0;
	return s;
}