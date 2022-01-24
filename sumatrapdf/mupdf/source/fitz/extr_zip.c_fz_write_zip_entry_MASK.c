#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uInt ;
struct TYPE_5__ {int /*<<< orphan*/  count; int /*<<< orphan*/  output; int /*<<< orphan*/  central; } ;
typedef  TYPE_1__ fz_zip_writer ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {char const* data; scalar_t__ len; } ;
typedef  TYPE_2__ fz_buffer ;

/* Variables and functions */
 int ZIP_CENTRAL_DIRECTORY_SIG ; 
 int ZIP_LOCAL_FILE_SIG ; 
 int FUNC0 (int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (char const*) ; 

void
FUNC9(fz_context *ctx, fz_zip_writer *zip, const char *name, fz_buffer *buf, int compress)
{
	int offset = FUNC4(ctx, zip->output);
	int sum;

	sum = FUNC0(0, NULL, 0);
	sum = FUNC0(sum, buf->data, (uInt)buf->len);

	FUNC2(ctx, zip->central, ZIP_CENTRAL_DIRECTORY_SIG);
	FUNC1(ctx, zip->central, 0); /* version made by: MS-DOS */
	FUNC1(ctx, zip->central, 20); /* version to extract: 2.0 */
	FUNC1(ctx, zip->central, 0); /* general purpose bit flag */
	FUNC1(ctx, zip->central, 0); /* compression method: store */
	FUNC1(ctx, zip->central, 0); /* TODO: last mod file time */
	FUNC1(ctx, zip->central, 0); /* TODO: last mod file date */
	FUNC2(ctx, zip->central, sum); /* crc-32 */
	FUNC2(ctx, zip->central, (int)buf->len); /* csize */
	FUNC2(ctx, zip->central, (int)buf->len); /* usize */
	FUNC1(ctx, zip->central, (int)FUNC8(name)); /* file name length */
	FUNC1(ctx, zip->central, 0); /* extra field length */
	FUNC1(ctx, zip->central, 0); /* file comment length */
	FUNC1(ctx, zip->central, 0); /* disk number start */
	FUNC1(ctx, zip->central, 0); /* internal file attributes */
	FUNC2(ctx, zip->central, 0); /* external file attributes */
	FUNC2(ctx, zip->central, offset); /* relative offset of local header */
	FUNC3(ctx, zip->central, name);

	FUNC7(ctx, zip->output, ZIP_LOCAL_FILE_SIG);
	FUNC6(ctx, zip->output, 20); /* version to extract: 2.0 */
	FUNC6(ctx, zip->output, 0); /* general purpose bit flag */
	FUNC6(ctx, zip->output, 0); /* compression method: store */
	FUNC6(ctx, zip->output, 0); /* TODO: last mod file time */
	FUNC6(ctx, zip->output, 0); /* TODO: last mod file date */
	FUNC7(ctx, zip->output, sum); /* crc-32 */
	FUNC7(ctx, zip->output, (int)buf->len); /* csize */
	FUNC7(ctx, zip->output, (int)buf->len); /* usize */
	FUNC6(ctx, zip->output, (int)FUNC8(name)); /* file name length */
	FUNC6(ctx, zip->output, 0); /* extra field length */
	FUNC5(ctx, zip->output, name, FUNC8(name));
	FUNC5(ctx, zip->output, buf->data, buf->len);

	++zip->count;
}