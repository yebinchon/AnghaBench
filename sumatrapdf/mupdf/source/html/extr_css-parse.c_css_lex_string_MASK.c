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
struct lexbuf {int c; } ;

/* Variables and functions */
 int CSS_STRING ; 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct lexbuf*,float) ; 

__attribute__((used)) static int FUNC4(struct lexbuf *buf, int q)
{
	while (buf->c && buf->c != q)
	{
		if (FUNC0(buf, '\\'))
		{
			if (FUNC0(buf, 'n'))
				FUNC3(buf, '\n');
			else if (FUNC0(buf, 'r'))
				FUNC3(buf, '\r');
			else if (FUNC0(buf, 'f'))
				FUNC3(buf, '\f');
			else if (FUNC0(buf, '\f'))
				/* line continuation */ ;
			else if (FUNC0(buf, '\n'))
				/* line continuation */ ;
			else if (FUNC0(buf, '\r'))
				FUNC0(buf, '\n');
			else
			{
				FUNC3(buf, buf->c);
				FUNC2(buf);
			}
		}
		else
		{
			FUNC3(buf, buf->c);
			FUNC2(buf);
		}
	}
	FUNC1(buf, q);
	FUNC3(buf, 0);
	return CSS_STRING;
}