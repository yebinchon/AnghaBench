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
typedef  int /*<<< orphan*/  fz_buffer ;
struct TYPE_4__ {int /*<<< orphan*/ * (* read_entry ) (int /*<<< orphan*/ *,TYPE_1__*,char const*) ;} ;
typedef  TYPE_1__ fz_archive ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 

fz_buffer *
FUNC2(fz_context *ctx, fz_archive *arch, const char *name)
{
	if (!arch->read_entry)
		FUNC0(ctx, FZ_ERROR_GENERIC, "cannot read archive entry");
	return arch->read_entry(ctx, arch, name);
}