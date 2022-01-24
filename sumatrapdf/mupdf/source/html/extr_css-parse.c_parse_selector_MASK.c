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
struct lexbuf {char lookahead; } ;
typedef  int /*<<< orphan*/  fz_css_selector ;

/* Variables and functions */
 char EOF ; 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/ * FUNC1 (struct lexbuf*,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct lexbuf*) ; 

__attribute__((used)) static fz_css_selector *FUNC3(struct lexbuf *buf)
{
	fz_css_selector *sel = FUNC2(buf);
	for (;;)
	{
		if (FUNC0(buf, ' '))
		{
			if (FUNC0(buf, '+'))
				sel = FUNC1(buf, '+', sel);
			else if (FUNC0(buf, '>'))
				sel = FUNC1(buf, '>', sel);
			else if (buf->lookahead != ',' && buf->lookahead != '{' && buf->lookahead != EOF)
				sel = FUNC1(buf, ' ', sel);
			else
				break;
		}
		else if (FUNC0(buf, '+'))
			sel = FUNC1(buf, '+', sel);
		else if (FUNC0(buf, '>'))
			sel = FUNC1(buf, '>', sel);
		else
			break;
	}
	return sel;
}