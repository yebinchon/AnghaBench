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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  udf_t ;
typedef  int /*<<< orphan*/  udf_dirent_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ is_cfg; scalar_t__* is_old_c32; } ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ EXTRACT_PROPS ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILES_DIR ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 scalar_t__ FormatStatus ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  MSG_231 ; 
 size_t NB_OLD_C32 ; 
 int /*<<< orphan*/  OP_FILE_COPY ; 
 int PROGRESS_THRESHOLD ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int UDF_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE_RETRIES ; 
 char* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (char*,int,char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  autorun_name ; 
 scalar_t__ FUNC14 (int,int) ; 
 scalar_t__ FUNC15 (char const*,scalar_t__,char const*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * embedded_sl_version_str ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nb_blocks ; 
 int /*<<< orphan*/ * old_c32_name ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ preserve_timestamps ; 
 int /*<<< orphan*/  FUNC19 (char*,scalar_t__) ; 
 char const* psz_extract_dir ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC23 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scan_only ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC26 (char const*) ; 
 int /*<<< orphan*/  stupid_antivirus ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  total_blocks ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *) ; 
 char* FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC35 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (char*,...) ; 
 scalar_t__* use_own_c32 ; 

__attribute__((used)) static int FUNC39(udf_t *p_udf, udf_dirent_t *p_udf_dirent, const char *psz_path)
{
	HANDLE file_handle = NULL;
	DWORD buf_size, wr_size, err;
	EXTRACT_PROPS props;
	BOOL r, is_identical;
	int length;
	size_t i;
	char tmp[128], *psz_fullpath = NULL, *psz_sanpath = NULL;
	const char* psz_basename;
	udf_dirent_t *p_udf_dirent2;
	uint8_t buf[UDF_BLOCKSIZE];
	int64_t read, file_length;

	if ((p_udf_dirent == NULL) || (psz_path == NULL))
		return 1;

	if (psz_path[0] == 0)
		FUNC9(NULL, TRUE);
	while ((p_udf_dirent = FUNC37(p_udf_dirent)) != NULL) {
		if (FormatStatus) goto out;
		psz_basename = FUNC32(p_udf_dirent);
		if (FUNC26(psz_basename) == 0)
			continue;
		length = (int)(3 + FUNC26(psz_path) + FUNC26(psz_basename) + FUNC26(psz_extract_dir) + 24);
		psz_fullpath = (char*)FUNC14(sizeof(char), length);
		if (psz_fullpath == NULL) {
			FUNC38("Error allocating file name");
			goto out;
		}
		length = FUNC13(psz_fullpath, length, "%s%s/%s", psz_extract_dir, psz_path, psz_basename);
		if (length < 0) {
			goto out;
		}
		if (FUNC34(p_udf_dirent)) {
			if (!scan_only) {
				psz_sanpath = FUNC23(psz_fullpath, &is_identical);
				FUNC3(FUNC12(psz_sanpath));
				if (preserve_timestamps) {
					FUNC24(psz_sanpath, FUNC27(FUNC30(p_udf_dirent)),
						FUNC27(FUNC29(p_udf_dirent)), FUNC27(FUNC33(p_udf_dirent)));
				}
				FUNC21(psz_sanpath);
			}
			p_udf_dirent2 = FUNC35(p_udf_dirent);
			if (p_udf_dirent2 != NULL) {
				if (FUNC39(p_udf, p_udf_dirent2, &psz_fullpath[FUNC26(psz_extract_dir)]))
					goto out;
			}
		} else {
			file_length = FUNC31(p_udf_dirent);
			if (FUNC15(psz_path, file_length, psz_basename, psz_fullpath, &props)) {
				FUNC21(psz_fullpath);
				continue;
			}
			FUNC19(psz_fullpath, file_length);
			for (i=0; i<NB_OLD_C32; i++) {
				if (props.is_old_c32[i] && use_own_c32[i]) {
					FUNC25(tmp, "%s/syslinux-%s/%s", FILES_DIR, embedded_sl_version_str[0], old_c32_name[i]);
					if (FUNC0(tmp, psz_fullpath, FALSE)) {
						FUNC38("  Replaced with local version %s", FUNC5(tmp)?"✓":"✗");
						break;
					}
					FUNC38("  Could not replace file: %s", FUNC10());
				}
			}
			if (i < NB_OLD_C32)
				continue;
			psz_sanpath = FUNC23(psz_fullpath, &is_identical);
			if (!is_identical)
				FUNC38("  File name sanitized to '%s'", psz_sanpath);
			file_handle = FUNC1(psz_sanpath, GENERIC_READ | GENERIC_WRITE,
				FILE_SHARE_READ, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
			if (file_handle == INVALID_HANDLE_VALUE) {
				err = FUNC2();
				FUNC38("  Unable to create file: %s", FUNC10());
				if ((err == ERROR_ACCESS_DENIED) && (FUNC22(&psz_sanpath[3], autorun_name) == 0))
					FUNC38(stupid_antivirus);
				else
					goto out;
			} else {
				FUNC18(file_handle, file_length);
				while (file_length > 0) {
					if (FormatStatus) goto out;
					FUNC17(buf, 0, UDF_BLOCKSIZE);
					read = FUNC36(p_udf_dirent, buf, 1);
					if (read < 0) {
						FUNC38("  Error reading UDF file %s", &psz_fullpath[FUNC26(psz_extract_dir)]);
						goto out;
					}
					buf_size = (DWORD)FUNC6(file_length, read);
					FUNC4(r = FUNC11(file_handle, buf, buf_size, &wr_size, WRITE_RETRIES));
					if (!r) {
						FUNC38("  Error writing file: %s", FUNC10());
						goto out;
					}
					file_length -= read;
					if (nb_blocks++ % PROGRESS_THRESHOLD == 0)
						FUNC8(OP_FILE_COPY, MSG_231, nb_blocks, total_blocks);
				}
			}
			if ((preserve_timestamps) && (!FUNC7(file_handle, FUNC27(FUNC30(p_udf_dirent)),
				FUNC27(FUNC29(p_udf_dirent)), FUNC27(FUNC33(p_udf_dirent)))))
				FUNC38("  Could not set timestamp: %s", FUNC10());

			// If you have a fast USB 3.0 device, the default Windows buffering does an
			// excellent job at compensating for our small blocks read/writes to max out the
			// device's bandwidth.
			// The drawback however is with cancellation. With a large file, CloseHandle()
			// may take forever to complete and is not interruptible. We try to detect this.
			FUNC4(FUNC20(file_handle));
			if (props.is_cfg)
				FUNC16(psz_sanpath, psz_path, psz_basename, &props);
			FUNC21(psz_sanpath);
		}
		FUNC21(psz_fullpath);
	}
	return 0;

out:
	if (p_udf_dirent != NULL)
		FUNC28(p_udf_dirent);
	FUNC4(FUNC20(file_handle));
	FUNC21(psz_sanpath);
	FUNC21(psz_fullpath);
	return 1;
}