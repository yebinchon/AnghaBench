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
 int CSS_LENGTH ; 
 int CSS_NUMBER ; 
 int CSS_PERCENT ; 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lexbuf*,char) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 

__attribute__((used)) static int FUNC5(struct lexbuf *buf)
{
	while (buf->c >= '0' && buf->c <= '9')
	{
		FUNC2(buf, buf->c);
		FUNC1(buf);
	}

	if (FUNC0(buf, '.'))
	{
		FUNC2(buf, '.');
		while (buf->c >= '0' && buf->c <= '9')
		{
			FUNC2(buf, buf->c);
			FUNC1(buf);
		}
	}

	if (FUNC0(buf, '%'))
	{
		FUNC2(buf, '%');
		FUNC2(buf, 0);
		return CSS_PERCENT;
	}

	if (FUNC4(buf->c))
	{
		FUNC2(buf, buf->c);
		FUNC1(buf);
		while (FUNC3(buf->c))
		{
			FUNC2(buf, buf->c);
			FUNC1(buf);
		}
		FUNC2(buf, 0);
		return CSS_LENGTH;
	}

	FUNC2(buf, 0);
	return CSS_NUMBER;
}