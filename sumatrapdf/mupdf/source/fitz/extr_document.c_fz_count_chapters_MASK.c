#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* count_chapters ) (int /*<<< orphan*/ *,TYPE_1__*) ;} ;
typedef  TYPE_1__ fz_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC2(fz_context *ctx, fz_document *doc)
{
	FUNC0(ctx, doc);
	if (doc && doc->count_chapters)
		return doc->count_chapters(ctx, doc);
	return 1;
}