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
struct lexbuf {char c; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lexbuf*,float) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lexbuf*,float) ; 
 int /*<<< orphan*/  FUNC3 (struct lexbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

__attribute__((used)) static void FUNC5(struct lexbuf *buf)
{
	while (buf->c && buf->c != ')' && !FUNC4(buf->c))
	{
		if (FUNC0(buf, '\\'))
		{
			if (FUNC0(buf, 'n'))
				FUNC2(buf, '\n');
			else if (FUNC0(buf, 'r'))
				FUNC2(buf, '\r');
			else if (FUNC0(buf, 'f'))
				FUNC2(buf, '\f');
			else
			{
				FUNC2(buf, buf->c);
				FUNC1(buf);
			}
		}
		else if (buf->c == '!' || buf->c == '#' || buf->c == '$' || buf->c == '%' || buf->c == '&' ||
				(buf->c >= '*' && buf->c <= '[') ||
				(buf->c >= ']' && buf->c <= '~') ||
				buf->c > 159)
		{
			FUNC2(buf, buf->c);
			FUNC1(buf);
		}
		else
			FUNC3(buf, "unexpected character in url");
	}
	FUNC2(buf, 0);
}