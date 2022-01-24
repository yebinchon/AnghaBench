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
typedef  int /*<<< orphan*/  (* str_handle_lines_t ) (int /*<<< orphan*/ *,char*,void*) ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  True ; 
 char* FUNC1 (char*,char) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (size_t) ; 

BOOL
FUNC6(RDPCLIENT * This, const char *input, char **rest, str_handle_lines_t linehandler, void *data)
{
	char *buf, *p;
	char *oldrest;
	size_t inputlen;
	size_t buflen;
	size_t restlen = 0;
	BOOL ret = True;

	/* Copy data to buffer */
	inputlen = FUNC2(input);
	if (*rest)
		restlen = FUNC2(*rest);
	buflen = restlen + inputlen + 1;
	buf = (char *) FUNC5(buflen);
	buf[0] = '\0';
	if (*rest)
		FUNC0(buf, *rest, buflen);
	FUNC3(buf, input, inputlen);
	p = buf;

	while (1)
	{
		char *newline = FUNC1(p, '\n');
		if (newline)
		{
			*newline = '\0';
			if (!linehandler(This, p, data))
			{
				p = newline + 1;
				ret = False;
				break;
			}
			p = newline + 1;
		}
		else
		{
			break;

		}
	}

	/* Save in rest */
	oldrest = *rest;
	restlen = buf + buflen - p;
	*rest = (char *) FUNC5(restlen);
	FUNC0((*rest), p, restlen);
	FUNC4(oldrest);

	FUNC4(buf);
	return ret;
}