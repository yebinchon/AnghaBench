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
typedef  int /*<<< orphan*/  fz_location ;
struct TYPE_5__ {int /*<<< orphan*/  (* resolve_link ) (int /*<<< orphan*/ *,TYPE_1__*,char const*,float*,float*) ;} ;
typedef  TYPE_1__ fz_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char const*,float*,float*) ; 

fz_location
FUNC3(fz_context *ctx, fz_document *doc, const char *uri, float *xp, float *yp)
{
	FUNC0(ctx, doc);
	if (xp) *xp = 0;
	if (yp) *yp = 0;
	if (doc && doc->resolve_link)
		return doc->resolve_link(ctx, doc, uri, xp, yp);
	return FUNC1(-1, -1);
}