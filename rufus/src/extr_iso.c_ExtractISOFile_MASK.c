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
typedef  int /*<<< orphan*/  udf_t ;
typedef  int /*<<< orphan*/  udf_dirent_t ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ lsn_t ;
typedef  int /*<<< orphan*/  iso9660_t ;
struct TYPE_5__ {TYPE_2__* psz_symlink; } ;
struct TYPE_6__ {size_t extents; scalar_t__* extsize; TYPE_1__ rr; scalar_t__* lsn; } ;
typedef  TYPE_2__ iso9660_stat_t ;
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 scalar_t__ FUNC0 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ ISO_BLOCKSIZE ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int UDF_BLOCKSIZE ; 
 int /*<<< orphan*/  WRITE_RETRIES ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (char const*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 

int64_t FUNC19(const char* iso, const char* iso_file, const char* dest_file, DWORD attributes)
{
	size_t i, j;
	ssize_t read_size;
	int64_t file_length, extent_length, r = 0;
	char buf[UDF_BLOCKSIZE];
	DWORD buf_size, wr_size;
	iso9660_t* p_iso = NULL;
	udf_t* p_udf = NULL;
	udf_dirent_t *p_udf_root = NULL, *p_udf_file = NULL;
	iso9660_stat_t *p_statbuf = NULL;
	lsn_t lsn;
	HANDLE file_handle = INVALID_HANDLE_VALUE;

	file_handle = FUNC0(dest_file, GENERIC_READ | GENERIC_WRITE,
		FILE_SHARE_READ, NULL, CREATE_ALWAYS, attributes, NULL);
	if (file_handle == INVALID_HANDLE_VALUE) {
		FUNC18("  Could not create file %s: %s", dest_file, FUNC2());
		goto out;
	}

	// First try to open as UDF - fallback to ISO if it failed
	p_udf = FUNC16(iso);
	if (p_udf == NULL)
		goto try_iso;

	p_udf_root = FUNC15(p_udf, true, 0);
	if (p_udf_root == NULL) {
		FUNC18("Could not locate UDF root directory");
		goto out;
	}
	p_udf_file = FUNC13(p_udf_root, iso_file);
	if (!p_udf_file) {
		FUNC18("Could not locate file %s in ISO image", iso_file);
		goto out;
	}
	file_length = FUNC14(p_udf_file);
	while (file_length > 0) {
		FUNC8(buf, 0, UDF_BLOCKSIZE);
		read_size = FUNC17(p_udf_file, buf, 1);
		if (read_size < 0) {
			FUNC18("Error reading UDF file %s", iso_file);
			goto out;
		}
		buf_size = (DWORD)FUNC1(file_length, read_size);
		if (!FUNC3(file_handle, buf, buf_size, &wr_size, WRITE_RETRIES)) {
			FUNC18("  Error writing file %s: %s", dest_file, FUNC2());
			goto out;
		}
		file_length -= read_size;
		r += read_size;
	}
	goto out;

try_iso:
	p_iso = FUNC7(iso);
	if (p_iso == NULL) {
		FUNC18("Unable to open image '%s'", iso);
		goto out;
	}

	p_statbuf = FUNC5(p_iso, iso_file);
	if (p_statbuf == NULL) {
		FUNC18("Could not get ISO-9660 file information for file %s", iso_file);
		goto out;
	}

	for (j = 0; j < p_statbuf->extents; j++) {
		extent_length = p_statbuf->extsize[j];
		for (i = 0; extent_length > 0; i++) {
			FUNC8(buf, 0, ISO_BLOCKSIZE);
			lsn = p_statbuf->lsn[j] + (lsn_t)i;
			if (FUNC6(p_iso, buf, lsn, 1) != ISO_BLOCKSIZE) {
				FUNC18("  Error reading ISO9660 file %s at LSN %lu", iso_file, (long unsigned int)lsn);
				goto out;
			}
			buf_size = (DWORD)FUNC1(extent_length, ISO_BLOCKSIZE);
			if (!FUNC3(file_handle, buf, buf_size, &wr_size, WRITE_RETRIES)) {
				FUNC18("  Error writing file %s: %s", dest_file, FUNC2());
				goto out;
			}
			extent_length -= ISO_BLOCKSIZE;
			r += ISO_BLOCKSIZE;
		}
	}

out:
	FUNC9(file_handle);
	if (p_statbuf != NULL)
		FUNC10(p_statbuf->rr.psz_symlink);
	FUNC10(p_statbuf);
	if (p_udf_root != NULL)
		FUNC12(p_udf_root);
	if (p_udf_file != NULL)
		FUNC12(p_udf_file);
	if (p_iso != NULL)
		FUNC4(p_iso);
	if (p_udf != NULL)
		FUNC11(p_udf);
	return r;
}