#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  size; scalar_t__ offset; } ;
typedef  TYPE_2__ tar_entry ;
struct TYPE_6__ {int /*<<< orphan*/ * file; } ;
struct TYPE_8__ {TYPE_1__ super; } ;
typedef  TYPE_3__ fz_tar_archive ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_archive ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,char const*) ; 

__attribute__((used)) static fz_stream *FUNC5(fz_context *ctx, fz_archive *arch, const char *name)
{
	fz_tar_archive *tar = (fz_tar_archive *) arch;
	fz_stream *file = tar->super.file;
	tar_entry *ent;

	ent = FUNC4(ctx, tar, name);
	if (!ent)
		FUNC3(ctx, FZ_ERROR_GENERIC, "cannot find named tar archive entry");

	FUNC1(ctx, file, ent->offset + 512, 0);
	return FUNC0(ctx, file, ent->size, FUNC2(ctx, file));
}