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
typedef  int int64_t ;
struct TYPE_6__ {int /*<<< orphan*/ * file; } ;
struct TYPE_7__ {int count; TYPE_3__* entries; TYPE_1__ super; } ;
typedef  TYPE_2__ fz_tar_archive ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {int offset; int size; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int INT_MAX ; 
 int SEEK_SET ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int) ; 
 char FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  tar_entry ; 

__attribute__((used)) static void FUNC10(fz_context *ctx, fz_tar_archive *tar)
{
	fz_stream *file = tar->super.file;
	char name[100];
	char octsize[12];
	char typeflag;
	int64_t offset, blocks, size;
	size_t n;

	tar->count = 0;

	FUNC3(ctx, file, 0, SEEK_SET);

	while (1)
	{
		offset = FUNC5(ctx, file);
		n = FUNC0(ctx, file, (unsigned char *) name, FUNC7(name));
		if (n < FUNC7(name))
			FUNC6(ctx, FZ_ERROR_GENERIC, "premature end of data in tar entry name");
		name[FUNC7(name) - 1] = '\0';

		if (FUNC9(name) == 0)
			break;

		FUNC3(ctx, file, 24, 1);
		n = FUNC0(ctx, file, (unsigned char *) octsize, FUNC7(octsize));
		if (n < FUNC7(octsize))
			FUNC6(ctx, FZ_ERROR_GENERIC, "premature end of data in tar entry size");
		octsize[FUNC7(octsize) - 1] = '\0';
		size = FUNC8(octsize);
		if (size > INT_MAX)
			FUNC6(ctx, FZ_ERROR_GENERIC, "tar archive entry too large");

		FUNC3(ctx, file, 20, 1);
		typeflag = FUNC1(ctx, file);

		FUNC3(ctx, file, 355, 1);
		blocks = (size + 511) / 512;
		FUNC3(ctx, file, blocks * 512, 1);

		if (typeflag != '0' && typeflag != '\0')
			continue;

		tar->entries = FUNC2(ctx, tar->entries, tar->count + 1, tar_entry);

		tar->entries[tar->count].name = FUNC4(ctx, name);
		tar->entries[tar->count].offset = offset;
		tar->entries[tar->count].size = size;

		tar->count++;
	}
}