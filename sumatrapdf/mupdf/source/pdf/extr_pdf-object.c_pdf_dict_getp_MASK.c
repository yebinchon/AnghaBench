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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 

pdf_obj *
FUNC6(fz_context *ctx, pdf_obj *obj, const char *keys)
{
	char buf[256];
	char *k, *e;

	FUNC1(obj);
	if (!FUNC0(obj))
		return NULL;
	if (FUNC5(keys)+1 > 256)
		FUNC2(ctx, FZ_ERROR_GENERIC, "path too long");

	FUNC4(buf, keys);

	e = buf;
	while (*e && obj)
	{
		k = e;
		while (*e != '/' && *e != '\0')
			e++;

		if (*e == '/')
		{
			*e = '\0';
			e++;
		}

		obj = FUNC3(ctx, obj, k);
	}

	return obj;
}