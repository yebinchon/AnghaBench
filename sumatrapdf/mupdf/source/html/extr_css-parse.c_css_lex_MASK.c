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
struct lexbuf {char c; scalar_t__ string_len; } ;

/* Variables and functions */
 int CSS_URI ; 
 int EOF ; 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*,char) ; 
 int FUNC2 (struct lexbuf*) ; 
 int FUNC3 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct lexbuf*) ; 
 int FUNC5 (struct lexbuf*) ; 
 int FUNC6 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct lexbuf*,unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (struct lexbuf*,char*) ; 
 scalar_t__ FUNC10 (char) ; 
 scalar_t__ FUNC11 (char) ; 
 scalar_t__ FUNC12 (char) ; 

__attribute__((used)) static int FUNC13(struct lexbuf *buf)
{
	int t;

	// TODO: keyword escape sequences

	buf->string_len = 0;

restart:
	if (buf->c == 0)
		return EOF;

	if (FUNC12(buf->c))
	{
		while (FUNC12(buf->c))
			FUNC4(buf);
		return ' ';
	}

	if (FUNC0(buf, '/'))
	{
		if (FUNC0(buf, '*'))
		{
			while (buf->c)
			{
				if (FUNC0(buf, '*'))
				{
					while (buf->c == '*')
						FUNC4(buf);
					if (FUNC0(buf, '/'))
						goto restart;
				}
				FUNC4(buf);
			}
			FUNC9(buf, "unterminated comment");
		}
		return '/';
	}

	if (FUNC0(buf, '<'))
	{
		if (FUNC0(buf, '!'))
		{
			FUNC1(buf, '-');
			FUNC1(buf, '-');
			goto restart; /* ignore CDO */
		}
		return '<';
	}

	if (FUNC0(buf, '-'))
	{
		if (FUNC0(buf, '-'))
		{
			FUNC1(buf, '>');
			goto restart; /* ignore CDC */
		}
		if (FUNC11(buf->c))
		{
			FUNC8(buf, '-');
			return FUNC3(buf);
		}
		return '-';
	}

	if (FUNC0(buf, '.'))
	{
		if (buf->c >= '0' && buf->c <= '9')
		{
			FUNC8(buf, '.');
			return FUNC5(buf);
		}
		return '.';
	}

	if (FUNC0(buf, '#'))
	{
		if (FUNC10(buf->c))
			return FUNC2(buf);
		return '#';
	}

	if (FUNC0(buf, '"'))
		return FUNC6(buf, '"');
	if (FUNC0(buf, '\''))
		return FUNC6(buf, '\'');

	if (buf->c >= '0' && buf->c <= '9')
		return FUNC5(buf);

	if (FUNC0(buf, 'u'))
	{
		if (FUNC0(buf, 'r'))
		{
			if (FUNC0(buf, 'l'))
			{
				if (FUNC0(buf, '('))
				{
					while (FUNC12(buf->c))
						FUNC4(buf);
					if (FUNC0(buf, '"'))
						FUNC6(buf, '"');
					else if (FUNC0(buf, '\''))
						FUNC6(buf, '\'');
					else
						FUNC7(buf);
					while (FUNC12(buf->c))
						FUNC4(buf);
					FUNC1(buf, ')');
					return CSS_URI;
				}
				FUNC8(buf, 'u');
				FUNC8(buf, 'r');
				FUNC8(buf, 'l');
				return FUNC3(buf);
			}
			FUNC8(buf, 'u');
			FUNC8(buf, 'r');
			return FUNC3(buf);
		}
		FUNC8(buf, 'u');
		return FUNC3(buf);
	}

	if (FUNC11(buf->c))
	{
		FUNC8(buf, buf->c);
		FUNC4(buf);
		return FUNC3(buf);
	}

	t = buf->c;
	FUNC4(buf);
	return t;
}