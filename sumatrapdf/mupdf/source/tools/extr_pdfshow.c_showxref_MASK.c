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
struct TYPE_3__ {char type; int /*<<< orphan*/  gen; scalar_t__ ofs; } ;
typedef  TYPE_1__ pdf_xref_entry ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  out ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	int i;
	int xref_len = FUNC2(ctx, doc);
	FUNC0(ctx, out, "xref\n0 %d\n", xref_len);
	for (i = 0; i < xref_len; i++)
	{
		pdf_xref_entry *entry = FUNC1(ctx, doc, i);
		FUNC0(ctx, out, "%05d: %010d %05d %c \n",
				i,
				(int)entry->ofs,
				entry->gen,
				entry->type ? entry->type : '-');
	}
}