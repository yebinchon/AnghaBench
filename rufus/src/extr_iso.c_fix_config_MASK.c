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
struct TYPE_6__ {int /*<<< orphan*/  usb_label; int /*<<< orphan*/  label; int /*<<< orphan*/  has_efi_syslinux; } ;
struct TYPE_5__ {scalar_t__ is_grub_cfg; scalar_t__ is_syslinux_cfg; scalar_t__ is_conf; scalar_t__ is_cfg; scalar_t__ is_menu_cfg; } ;
typedef  TYPE_1__ EXTRACT_PROPS ;

/* Variables and functions */
 scalar_t__ BT_IMAGE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ boot_type ; 
 int /*<<< orphan*/  efi_dirname ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__ img_report ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ persistence_size ; 
 char* FUNC4 (int /*<<< orphan*/ ,char,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (char const*) ; 
 int /*<<< orphan*/ * syslinux_cfg ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void FUNC12(const char* psz_fullpath, const char* psz_path, const char* psz_basename, EXTRACT_PROPS* props)
{
	size_t i, nul_pos;
	char *iso_label = NULL, *usb_label = NULL, *src, *dst;

	nul_pos = FUNC10(psz_fullpath);
	src = FUNC8(psz_fullpath);
	if (src == NULL)
		return;
	for (i=0; i<nul_pos; i++)
		if (src[i] == '/') src[i] = '\\';

	// Add persistence to the kernel options
	if ((boot_type == BT_IMAGE) && FUNC1(img_report) && persistence_size) {
		if ((props->is_grub_cfg) || (props->is_menu_cfg) || (props->is_syslinux_cfg)) {
			// Ubuntu & derivatives are assumed to use '/casper/vmlinuz'
			// in their kernel options and use 'persistent' as keyword.
			if (FUNC5(src, props->is_grub_cfg ? "linux" : "append",
				props->is_grub_cfg ? "/casper/vmlinuz" : "initrd=/casper/initrd",
				// Of course, Mint has to use 'initrd=/casper/initrd.lz' instead of 'initrd=/casper/initrd'
				props->is_grub_cfg ? "/casper/vmlinuz persistent" : "persistent initrd=/casper/initrd", TRUE) != NULL)
				FUNC11("  Added 'persistent' kernel option");
			// Debian & derivatives are assumed to use 'boot=live' in
			// their kernel options and use 'persistence' as keyword.
			else if (FUNC5(src, props->is_grub_cfg ? "linux" : "append",
				"boot=live", "boot=live persistence", TRUE) != NULL)
				FUNC11("  Added 'persistence' kernel option");
			// Other distros can go to hell. Seriously, just check all partitions for
			// an ext volume with the right label and use persistence *THEN*. I mean,
			// why on earth do you need a bloody *NONSTANDARD* kernel option and/or a
			// "persistence.conf" file. This is SO INCREDIBLY RETARDED that it makes
			// Windows look smart in comparison. Great job there, Linux people!
		}
	}

	// Workaround for config files requiring an ISO label for kernel append that may be
	// different from our USB label. Oh, and these labels must have spaces converted to \x20.
	if ((props->is_cfg) || (props->is_conf)) {
		iso_label = FUNC4(img_report.label, ' ', "\\x20");
		usb_label = FUNC4(img_report.usb_label, ' ', "\\x20");
		if ((iso_label != NULL) && (usb_label != NULL)) {
			if (props->is_grub_cfg) {
				// Older versions of GRUB EFI used "linuxefi", newer just use "linux"
				if ((FUNC5(src, "linux", iso_label, usb_label, TRUE) != NULL) ||
					(FUNC5(src, "linuxefi", iso_label, usb_label, TRUE) != NULL))
					FUNC11("  Patched %s: '%s' ➔ '%s'\n", src, iso_label, usb_label);
			}
			else if (FUNC5(src, (props->is_conf) ? "options" : "append",
				iso_label, usb_label, TRUE) != NULL)
				FUNC11("  Patched %s: '%s' ➔ '%s'\n", src, iso_label, usb_label);
		}
		FUNC6(iso_label);
		FUNC6(usb_label);
	}

	// Fix dual BIOS + EFI support for tails and other ISOs
	if ( (props->is_syslinux_cfg) && (FUNC9(psz_path, efi_dirname) == 0) &&
		 (FUNC9(psz_basename, syslinux_cfg[0]) == 0) &&
		 (!img_report.has_efi_syslinux) && (dst = FUNC8(src)) ) {
		dst[nul_pos-12] = 's'; dst[nul_pos-11] = 'y'; dst[nul_pos-10] = 's';
		FUNC0(src, dst, TRUE);
		FUNC11("Duplicated %s to %s\n", src, dst);
		FUNC2(dst);
	}

	// Workaround for FreeNAS
	if (props->is_grub_cfg) {
		iso_label = FUNC3(MAX_PATH);
		usb_label = FUNC3(MAX_PATH);
		if ((iso_label != NULL) && (usb_label != NULL)) {
			FUNC7(iso_label, MAX_PATH, "cd9660:/dev/iso9660/%s", img_report.label);
			FUNC7(usb_label, MAX_PATH, "msdosfs:/dev/msdosfs/%s", img_report.usb_label);
			if (FUNC5(src, "set", iso_label, usb_label, TRUE) != NULL)
				FUNC11("  Patched %s: '%s' ➔ '%s'\n", src, iso_label, usb_label);
		}
		FUNC6(iso_label);
		FUNC6(usb_label);
	}

	FUNC2(src);
}