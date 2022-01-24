#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct libfat_filesystem {int dummy; } ;
struct libfat_direntry {int* entry; } ;
typedef  int /*<<< orphan*/  iso9660_t ;
struct TYPE_9__ {TYPE_2__* psz_symlink; } ;
struct TYPE_10__ {TYPE_1__ rr; int /*<<< orphan*/ **** lsn; int /*<<< orphan*/  buf; int /*<<< orphan*/ * p_iso; scalar_t__ sec_start; } ;
typedef  TYPE_2__ iso9660_stat_t ;
typedef  TYPE_2__ iso9660_readfat_private ;
typedef  scalar_t__ int32_t ;
struct TYPE_11__ {char* efi_img_path; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__) ; 
 int ISO_BLOCKSIZE ; 
 int ISO_NB_BLOCKS ; 
 scalar_t__ TRUE ; 
 char** efi_bootname ; 
 char* image_path ; 
 TYPE_7__ img_report ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  iso9660_readfat ; 
 int /*<<< orphan*/  FUNC6 (struct libfat_filesystem*) ; 
 struct libfat_filesystem* FUNC7 (int /*<<< orphan*/ ,intptr_t) ; 
 scalar_t__ FUNC8 (struct libfat_filesystem*,scalar_t__,char*,struct libfat_direntry*) ; 
 TYPE_2__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (char*) ; 
 char FUNC12 (char) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

BOOL FUNC14(void)
{
	BOOL ret = FALSE;
	iso9660_t* p_iso = NULL;
	iso9660_stat_t* p_statbuf = NULL;
	iso9660_readfat_private* p_private = NULL;
	int32_t dc, c;
	struct libfat_filesystem *lf_fs = NULL;
	struct libfat_direntry direntry;
	char name[12] = { 0 };
	int i, j, k;

	if ((image_path == NULL) || !FUNC1(img_report))
		return FALSE;

	p_iso = FUNC5(image_path);
	if (p_iso == NULL) {
		FUNC13("Could not open image '%s' as an ISO-9660 file system", image_path);
		goto out;
	}
	p_statbuf = FUNC3(p_iso, img_report.efi_img_path);
	if (p_statbuf == NULL) {
		FUNC13("Could not get ISO-9660 file information for file %s\n", img_report.efi_img_path);
		goto out;
	}
	p_private = FUNC9(sizeof(iso9660_readfat_private));
	if (p_private == NULL)
		goto out;
	p_private->p_iso = p_iso;
	p_private->lsn = &p_statbuf->lsn[0];	// Image should be small enough not to use multiextents
	p_private->sec_start = 0;
	// Populate our intial buffer
	if (FUNC4(p_private->p_iso, p_private->buf, *p_private->lsn, ISO_NB_BLOCKS) != ISO_NB_BLOCKS * ISO_BLOCKSIZE) {
		FUNC13("Error reading ISO-9660 file %s at LSN %lu\n", img_report.efi_img_path, (long unsigned int)p_private->lsn);
		goto out;
	}
	lf_fs = FUNC7(iso9660_readfat, (intptr_t)p_private);
	if (lf_fs == NULL) {
		FUNC13("FAT access error");
		goto out;
	}

	// Navigate to /EFI/BOOT
	if (FUNC8(lf_fs, 0, "EFI        ", &direntry) < 0)
		goto out;
	dc = direntry.entry[26] + (direntry.entry[27] << 8);
	if (FUNC8(lf_fs, dc, "BOOT       ", &direntry) < 0)
		goto out;
	dc = direntry.entry[26] + (direntry.entry[27] << 8);

	for (i = 0; i < FUNC0(efi_bootname); i++) {
		// Sanity check in case the EFI forum comes up with a 'bootmips64.efi' or something...
		if (FUNC11(efi_bootname[i]) > 12) {
			FUNC13("Internal error: FAT 8.3");
			continue;
		}
		for (j = 0, k = 0; efi_bootname[i][j] != 0; j++) {
			if (efi_bootname[i][j] == '.') {
				while (k < 8)
					name[k++] = ' ';
			} else
				name[k++] = FUNC12(efi_bootname[i][j]);
		}
		c = FUNC8(lf_fs, dc, name, &direntry);
		if (c > 0) {
			if (!ret)
				FUNC13("  Detected EFI bootloader(s) (from '%s'):", img_report.efi_img_path);
			FUNC13("  ● '%s'", efi_bootname[i]);
			ret = TRUE;
		}
	}

out:
	if (lf_fs != NULL)
		FUNC6(lf_fs);
	if (p_statbuf != NULL)
		FUNC10(p_statbuf->rr.psz_symlink);
	FUNC10(p_statbuf);
	FUNC10(p_private);
	if (p_iso != NULL)
		FUNC2(p_iso);
	return ret;
}