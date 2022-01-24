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
struct TYPE_3__ {int /*<<< orphan*/  zip; } ;
typedef  TYPE_1__ xps_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 

int
FUNC2(fz_context *ctx, xps_document *doc, char *name)
{
	char buf[2048];
	if (name[0] == '/')
		name++;
	if (FUNC0(ctx, doc->zip, name))
		return 1;
	FUNC1(buf, sizeof buf, "%s/[0].piece", name);
	if (FUNC0(ctx, doc->zip, buf))
		return 1;
	FUNC1(buf, sizeof buf, "%s/[0].last.piece", name);
	if (FUNC0(ctx, doc->zip, buf))
		return 1;
	return 0;
}