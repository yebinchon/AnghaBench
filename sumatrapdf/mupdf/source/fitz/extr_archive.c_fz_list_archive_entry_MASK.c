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
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {char const* (* list_entry ) (int /*<<< orphan*/ *,TYPE_1__*,int) ;} ;
typedef  TYPE_1__ fz_archive ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

const char *
FUNC2(fz_context *ctx, fz_archive *arch, int idx)
{
	if (!arch->list_entry)
		FUNC0(ctx, FZ_ERROR_GENERIC, "cannot list archive entries");
	return arch->list_entry(ctx, arch, idx);
}