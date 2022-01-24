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
struct parser {scalar_t__ depth; int /*<<< orphan*/ * head; int /*<<< orphan*/  preserve_white; } ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct parser*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct parser*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,char*) ; 

__attribute__((used)) static void FUNC6(fz_context *ctx, struct parser *parser, char *a, char *b)
{
	fz_xml *head;
	char *s;
	int c;

	/* Skip text outside the root tag */
	if (parser->depth == 0)
		return;

	/* Skip all-whitespace text nodes */
	if (!parser->preserve_white)
	{
		for (s = a; s < b; s++)
			if (!FUNC2(*s))
				break;
		if (s == b)
			return;
	}

	(void)FUNC4(ctx, parser, a, b, 1);
	head = parser->head;

	/* entities are all longer than UTFmax so runetochar is safe */
	s = FUNC1(head);
	while (a < b) {
		if (*a == '&') {
			a += FUNC5(&c, a);
			s += FUNC0(s, c);
		}
		else {
			*s++ = *a++;
		}
	}
	*s = 0;

	FUNC3(ctx, parser);
}