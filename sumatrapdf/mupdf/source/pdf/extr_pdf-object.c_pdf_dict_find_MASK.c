#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int flags; } ;
typedef  TYPE_2__ pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_13__ {int len; TYPE_1__* items; } ;
struct TYPE_12__ {int /*<<< orphan*/  n; } ;
struct TYPE_10__ {TYPE_2__* k; } ;

/* Variables and functions */
 TYPE_8__* FUNC0 (TYPE_2__*) ; 
 TYPE_6__* FUNC1 (TYPE_2__*) ; 
 int PDF_FLAGS_SORTED ; 
 TYPE_2__* PDF_LIMIT ; 
 int /*<<< orphan*/ * PDF_NAME_LIST ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(fz_context *ctx, pdf_obj *obj, pdf_obj *key)
{
	int len = FUNC0(obj)->len;
	if ((obj->flags & PDF_FLAGS_SORTED) && len > 0)
	{
		int l = 0;
		int r = len - 1;
		pdf_obj *k = FUNC0(obj)->items[r].k;

		if (k == key || (k >= PDF_LIMIT && FUNC2(FUNC1(k)->n, PDF_NAME_LIST[(intptr_t)key]) < 0))
		{
			return -1 - (r+1);
		}

		while (l <= r)
		{
			int m = (l + r) >> 1;
			int c;

			k = FUNC0(obj)->items[m].k;
			c = (k < PDF_LIMIT ? (char *)key-(char *)k : -FUNC2(FUNC1(k)->n, PDF_NAME_LIST[(intptr_t)key]));
			if (c < 0)
				r = m - 1;
			else if (c > 0)
				l = m + 1;
			else
				return m;
		}
		return -1 - l;
	}
	else
	{
		int i;
		for (i = 0; i < len; i++)
		{
			pdf_obj *k = FUNC0(obj)->items[i].k;
			if (k < PDF_LIMIT)
			{
				if (k == key)
					return i;
			}
			else
			{
				if (!FUNC2(PDF_NAME_LIST[(intptr_t)key], FUNC1(k)->n))
					return i;
			}
		}

		return -1 - len;
	}
}