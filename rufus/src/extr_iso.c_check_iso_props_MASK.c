#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {int has_efi; scalar_t__* reactos_path; scalar_t__* efi_img_path; size_t wininst_index; int winpe; void* has_4GB_file; void** has_old_c32; int /*<<< orphan*/ * wininst_path; void* disable_iso; void* has_kolibrios; void* has_grub4dos; void* has_bootmgr_efi; void* has_bootmgr; void* uses_casper; void* has_grub2; void* has_efi_syslinux; } ;
struct TYPE_6__ {void** is_old_c32; void* is_menu_cfg; void* is_grub_cfg; void* is_cfg; void* is_syslinux_cfg; } ;
typedef  TYPE_1__ EXTRACT_PROPS ;
typedef  void* BOOL ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 void* FALSE ; 
 scalar_t__ FOUR_GIGABYTES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 scalar_t__ ISO_BLOCKSIZE ; 
 size_t MAX_WININST ; 
 size_t NB_OLD_C32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,void*) ; 
 void* TRUE ; 
 char* bootmgr_efi_name ; 
 char* bootmgr_name ; 
 char* casper_dirname ; 
 int /*<<< orphan*/  config_path ; 
 char** efi_bootname ; 
 char* efi_dirname ; 
 char* grldr_name ; 
 char* grub_cfg ; 
 char* grub_dirname ; 
 void* has_ldlinux_c32 ; 
 TYPE_3__ img_report ; 
 char** isolinux_bin ; 
 int /*<<< orphan*/  isolinux_path ; 
 char* kolibri_name ; 
 char* ldlinux_c32 ; 
 char* ldlinux_name ; 
 char* manjaro_marker ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* menu_cfg ; 
 char** old_c32_name ; 
 scalar_t__* old_c32_threshold ; 
 char** pe_dirname ; 
 char** pe_file ; 
 int /*<<< orphan*/  pop_os_name ; 
 char* reactos_name ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ scan_only ; 
 char* sources_str ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,char const*) ; 
 int FUNC11 (char const*) ; 
 char** syslinux_cfg ; 
 scalar_t__ total_blocks ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 char** wininst_name ; 

__attribute__((used)) static BOOL FUNC13(const char* psz_dirname, int64_t file_length, const char* psz_basename,
	const char* psz_fullpath, EXTRACT_PROPS *props)
{
	size_t i, j, len;

	// Check for an isolinux/syslinux config file anywhere
	FUNC4(props, 0, sizeof(EXTRACT_PROPS));
	for (i = 0; i < FUNC0(syslinux_cfg); i++) {
		if (FUNC5(psz_basename, syslinux_cfg[i]) == 0) {
			props->is_cfg = TRUE;	// Required for "extlinux.conf"
			props->is_syslinux_cfg = TRUE;
			// Maintain a list of all the isolinux/syslinux config files identified so far
			if ((scan_only) && (i < 3))
				FUNC2(&config_path, psz_fullpath, TRUE);
			if ((scan_only) && (i == 1) && (FUNC5(psz_dirname, efi_dirname) == 0))
				img_report.has_efi_syslinux = TRUE;
		}
	}

	// Check for an old incompatible c32 file anywhere
	for (i = 0; i < NB_OLD_C32; i++) {
		if ((FUNC5(psz_basename, old_c32_name[i]) == 0) && (file_length <= old_c32_threshold[i]))
			props->is_old_c32[i] = TRUE;
	}

	if (!scan_only) {	// Write-time checks
		// Check for config files that may need patching
		len = FUNC6(psz_basename);
		if ((len >= 4) && FUNC5(&psz_basename[len - 4], ".cfg") == 0) {
			props->is_cfg = TRUE;
			if (FUNC5(psz_basename, grub_cfg) == 0) {
				props->is_grub_cfg = TRUE;
			} else if (FUNC5(psz_basename, menu_cfg) == 0) {
				props->is_menu_cfg = TRUE;
			}
		}

		// In case there's an ldlinux.sys on the ISO, prevent it from overwriting ours
		if ((psz_dirname != NULL) && (psz_dirname[0] == 0) && (FUNC5(psz_basename, ldlinux_name) == 0)) {
			FUNC12("Skipping '%s' file from ISO image", psz_basename);
			return TRUE;
		}
	} else {	// Scan-time checks
		// Check for GRUB artifacts
		if (FUNC5(psz_dirname, grub_dirname) == 0)
			img_report.has_grub2 = TRUE;

		// Check for a syslinux v5.0+ file anywhere
		if (FUNC5(psz_basename, ldlinux_c32) == 0) {
			has_ldlinux_c32 = TRUE;
		}

		// Check for a '/casper#####' directory (non-empty)
		if (FUNC7(psz_dirname, casper_dirname, FUNC11(casper_dirname)) == 0) {
			img_report.uses_casper = TRUE;
			if (FUNC8(psz_dirname, pop_os_name) != NULL)
				img_report.disable_iso = TRUE;
		}

		// Check for various files in root (psz_dirname = "")
		if ((psz_dirname != NULL) && (psz_dirname[0] == 0)) {
			if (FUNC5(psz_basename, bootmgr_name) == 0) {
				img_report.has_bootmgr = TRUE;
			}
			if (FUNC5(psz_basename, bootmgr_efi_name) == 0) {
				img_report.has_bootmgr_efi = TRUE;
			}
			if (FUNC5(psz_basename, grldr_name) == 0) {
				img_report.has_grub4dos = TRUE;
			}
			if (FUNC5(psz_basename, kolibri_name) == 0) {
				img_report.has_kolibrios = TRUE;
			}
			if (FUNC5(psz_basename, bootmgr_efi_name) == 0) {
				img_report.has_efi |= 1;
			}
			if (FUNC5(psz_basename, manjaro_marker) == 0) {
				img_report.disable_iso = TRUE;
			}
		}

		// Check for ReactOS' setupldr.sys anywhere
		if ((img_report.reactos_path[0] == 0) && (FUNC5(psz_basename, reactos_name) == 0))
			FUNC10(img_report.reactos_path, psz_fullpath);

		// Check for the first 'efi*.img' we can find (that hopefully contains EFI boot files)
		if (!FUNC1(img_report) && (FUNC6(psz_basename) >= 7) &&
			(FUNC7(psz_basename, "efi", 3) == 0) &&
			(FUNC5(&psz_basename[FUNC11(psz_basename) - 4], ".img") == 0))
			FUNC10(img_report.efi_img_path, psz_fullpath);

		// Check for the EFI boot entries
		if (FUNC5(psz_dirname, efi_dirname) == 0) {
			for (i=0; i<FUNC0(efi_bootname); i++)
				if (FUNC5(psz_basename, efi_bootname[i]) == 0)
					img_report.has_efi |= (2<<i);	// start at 2 since "bootmgr.efi" is bit 0
		}

		// Check for "install.###" in "###/sources/"
		if (psz_dirname != NULL) {
			if (FUNC5(&psz_dirname[FUNC3(0, ((int)FUNC6(psz_dirname)) - ((int)FUNC11(sources_str)))], sources_str) == 0) {
				for (i = 0; i < FUNC0(wininst_name); i++) {
					if (FUNC5(psz_basename, wininst_name[i]) == 0) {
						if (img_report.wininst_index < MAX_WININST) {
							FUNC9(img_report.wininst_path[img_report.wininst_index], "?:%s", psz_fullpath);
							img_report.wininst_index++;
						}
					}
				}
			}
		}

		// Check for PE (XP) specific files in "/i386", "/amd64" or "/minint"
		for (i=0; i<FUNC0(pe_dirname); i++)
			if (FUNC5(psz_dirname, pe_dirname[i]) == 0)
				for (j=0; j<FUNC0(pe_file); j++)
					if (FUNC5(psz_basename, pe_file[j]) == 0)
						img_report.winpe |= (1<<j)<<(FUNC0(pe_dirname)*i);

		for (i=0; i<FUNC0(isolinux_bin); i++) {
			if (FUNC5(psz_basename, isolinux_bin[i]) == 0) {
				// Maintain a list of all the isolinux.bin files found
				FUNC2(&isolinux_path, psz_fullpath, TRUE);
			}
		}

		for (i=0; i<NB_OLD_C32; i++) {
			if (props->is_old_c32[i])
				img_report.has_old_c32[i] = TRUE;
		}
		if (file_length >= FOUR_GIGABYTES)
			img_report.has_4GB_file = TRUE;
		// Compute projected size needed
		total_blocks += file_length / ISO_BLOCKSIZE;
		// NB: ISO_BLOCKSIZE = UDF_BLOCKSIZE
		if ((file_length != 0) && (file_length % ISO_BLOCKSIZE != 0))
			total_blocks++;
		return TRUE;
	}
	return FALSE;
}