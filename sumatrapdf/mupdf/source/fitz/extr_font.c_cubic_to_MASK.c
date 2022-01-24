#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct closure {int /*<<< orphan*/  trm; int /*<<< orphan*/ * path; int /*<<< orphan*/ * ctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ fz_point ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ FT_Vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const FT_Vector *c1, const FT_Vector *c2, const FT_Vector *p, void *cc_)
{
	struct closure *cc = (struct closure *)cc_;
	fz_context *ctx = cc->ctx;
	fz_path *path = cc->path;
	fz_point c1t, c2t, pt;

	c1t = FUNC1(c1->x, c1->y, cc->trm);
	c2t = FUNC1(c2->x, c2->y, cc->trm);
	pt = FUNC1(p->x, p->y, cc->trm);

	FUNC0(ctx, path, c1t.x, c1t.y, c2t.x, c2t.y, pt.x, pt.y);
	return 0;
}