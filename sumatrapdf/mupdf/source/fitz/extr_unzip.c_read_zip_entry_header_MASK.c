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
struct TYPE_7__ {int offset; } ;
typedef  TYPE_2__ zip_entry ;
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/ * file; } ;
struct TYPE_8__ {TYPE_1__ super; } ;
typedef  TYPE_3__ fz_zip_archive ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int ZIP_ENCRYPTED_FLAG ; 
 scalar_t__ ZIP_LOCAL_FILE_SIG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(fz_context *ctx, fz_zip_archive *zip, zip_entry *ent)
{
	fz_stream *file = zip->super.file;
	uint32_t sig;
	int general, method, namelength, extralength;

	FUNC2(ctx, file, ent->offset, 0);

	sig = FUNC1(ctx, file);
	if (sig != ZIP_LOCAL_FILE_SIG)
		FUNC3(ctx, FZ_ERROR_GENERIC, "wrong zip local file signature (0x%x)", sig);

	(void) FUNC0(ctx, file); /* version */
	general = FUNC0(ctx, file); /* general */
	if (general & ZIP_ENCRYPTED_FLAG)
		FUNC3(ctx, FZ_ERROR_GENERIC, "zip content is encrypted");

	method = FUNC0(ctx, file);
	(void) FUNC0(ctx, file); /* file time */
	(void) FUNC0(ctx, file); /* file date */
	(void) FUNC1(ctx, file); /* crc-32 */
	(void) FUNC1(ctx, file); /* csize */
	(void) FUNC1(ctx, file); /* usize */
	namelength = FUNC0(ctx, file);
	extralength = FUNC0(ctx, file);

	FUNC2(ctx, file, namelength + extralength, 1);

	return method;
}