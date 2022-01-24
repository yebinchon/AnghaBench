#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  central; int /*<<< orphan*/  output; int /*<<< orphan*/  closed; } ;
typedef  TYPE_1__ fz_zip_writer ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void
FUNC4(fz_context *ctx, fz_zip_writer *zip)
{
	if (!zip)
		return;
	if (!zip->closed)
		FUNC3(ctx, "dropping unclosed zip writer");
	FUNC1(ctx, zip->output);
	FUNC0(ctx, zip->central);
	FUNC2(ctx, zip);
}