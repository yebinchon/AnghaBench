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

/* Variables and functions */
 int FZ_REPLACEMENT_CHARACTER ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int* single_code_list ; 
 int /*<<< orphan*/ * single_name_list ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

int
FUNC5(const char *name)
{
	char buf[64];
	char *p;
	int l = 0;
	int r = FUNC1(single_name_list) - 1;
	int code = 0;

	FUNC0(buf, name, sizeof buf);

	/* kill anything after first period and underscore */
	p = FUNC2(buf, '.');
	if (p) p[0] = 0;
	p = FUNC2(buf, '_');
	if (p) p[0] = 0;

	while (l <= r)
	{
		int m = (l + r) >> 1;
		int c = FUNC3(buf, single_name_list[m]);
		if (c < 0)
			r = m - 1;
		else if (c > 0)
			l = m + 1;
		else
			return single_code_list[m];
	}

	if (buf[0] == 'u' && buf[1] == 'n' && buf[2] == 'i')
		code = FUNC4(buf + 3, NULL, 16);
	else if (buf[0] == 'u')
		code = FUNC4(buf + 1, NULL, 16);
	else if (buf[0] == 'a' && buf[1] != 0 && buf[2] != 0)
		code = FUNC4(buf + 1, NULL, 10);

	return (code > 0 && code <= 0x10ffff) ? code : FZ_REPLACEMENT_CHARACTER;
}