#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int count; TYPE_2__* entries; } ;
typedef  TYPE_1__ fz_zip_archive ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_archive ;
struct TYPE_4__ {struct TYPE_4__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC1(fz_context *ctx, fz_archive *arch)
{
	fz_zip_archive *zip = (fz_zip_archive *) arch;
	int i;
	for (i = 0; i < zip->count; ++i)
		FUNC0(ctx, zip->entries[i].name);
	FUNC0(ctx, zip->entries);
}