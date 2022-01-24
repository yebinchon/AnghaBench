#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {int count; int closed; int /*<<< orphan*/  output; TYPE_1__* central; } ;
typedef  TYPE_2__ fz_zip_writer ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {char* data; int len; } ;

/* Variables and functions */
 int ZIP_END_OF_CENTRAL_DIRECTORY_SIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC5(fz_context *ctx, fz_zip_writer *zip)
{
	int64_t offset = FUNC1(ctx, zip->output);

	FUNC2(ctx, zip->output, zip->central->data, zip->central->len);

	FUNC4(ctx, zip->output, ZIP_END_OF_CENTRAL_DIRECTORY_SIG);
	FUNC3(ctx, zip->output, 0); /* number of this disk */
	FUNC3(ctx, zip->output, 0); /* number of disk where central directory starts */
	FUNC3(ctx, zip->output, zip->count); /* entries in central directory in this disk */
	FUNC3(ctx, zip->output, zip->count); /* entries in central directory in total */
	FUNC4(ctx, zip->output, (int)zip->central->len); /* size of the central directory */
	FUNC4(ctx, zip->output, (int)offset); /* offset of the central directory */
	FUNC3(ctx, zip->output, 5); /* zip file comment length */

	FUNC2(ctx, zip->output, "MuPDF", 5);

	FUNC0(ctx, zip->output);

	zip->closed = 1;
}