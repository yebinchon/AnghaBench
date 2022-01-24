#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  keymapname; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char) ; 
 char FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 

BOOL
FUNC7(RDPCLIENT * This, const char *locale)
{
	char *str, *ptr;
	FILE *fp;

	/* Create a working copy */
	str = FUNC6(locale);

	/* Truncate at dot and at */
	ptr = FUNC2(str, '.');
	if (ptr)
		*ptr = '\0';
	ptr = FUNC2(str, '@');
	if (ptr)
		*ptr = '\0';

	/* Replace _ with - */
	ptr = FUNC2(str, '_');
	if (ptr)
		*ptr = '-';

	/* Convert to lowercase */
	ptr = str;
	while (*ptr)
	{
		*ptr = FUNC3((int) *ptr);
		ptr++;
	}

	/* Try to open this keymap (da-dk) */
	fp = FUNC5(str);
	if (fp == NULL)
	{
		/* Truncate at dash */
		ptr = FUNC2(str, '-');
		if (ptr)
			*ptr = '\0';

		/* Try the short name (da) */
		fp = FUNC5(str);
	}

	if (fp)
	{
		FUNC1(fp);
		FUNC0(This->keymapname, str, sizeof(This->keymapname));
		FUNC4(str);
		return True;
	}

	FUNC4(str);
	return False;
}