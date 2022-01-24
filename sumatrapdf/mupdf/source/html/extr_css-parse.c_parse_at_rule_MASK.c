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
struct lexbuf {scalar_t__ lookahead; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSS_KEYWORD ; 
 scalar_t__ EOF ; 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct lexbuf*) ; 

__attribute__((used)) static void FUNC4(struct lexbuf *buf)
{
	FUNC1(buf, CSS_KEYWORD);

	/* skip until '{' or ';' */
	while (buf->lookahead != EOF)
	{
		if (FUNC0(buf, ';'))
		{
			FUNC3(buf);
			return;
		}
		if (FUNC0(buf, '{'))
		{
			int depth = 1;
			while (buf->lookahead != EOF && depth > 0)
			{
				if (FUNC0(buf, '{'))
					++depth;
				else if (FUNC0(buf, '}'))
					--depth;
				else
					FUNC2(buf);
			}
			FUNC3(buf);
			return;
		}
		FUNC2(buf);
	}
}