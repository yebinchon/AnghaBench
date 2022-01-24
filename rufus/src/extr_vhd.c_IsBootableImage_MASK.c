#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ checksum; scalar_t__ disk_type; scalar_t__ file_format_version; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_1__ vhd_footer ;
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ compression_type; int image_size; int /*<<< orphan*/  is_vhd; } ;
struct TYPE_9__ {int QuadPart; } ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOLEAN ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*,scalar_t__) ; 
 scalar_t__ BLED_COMPRESSION_NONE ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_1__*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_2__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VHD_FOOTER_FILE_FORMAT_V1_0 ; 
 scalar_t__ VHD_FOOTER_TYPE_FIXED_HARD_DISK ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  conectix_str ; 
 TYPE_4__ img_report ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

BOOL FUNC13(const char* path)
{
	HANDLE handle = INVALID_HANDLE_VALUE;
	LARGE_INTEGER liImageSize;
	vhd_footer* footer = NULL;
	DWORD size;
	size_t i;
	uint32_t checksum, old_checksum;
	LARGE_INTEGER ptr;
	BOOL is_bootable_img = FALSE;

	FUNC12("Disk image analysis:");
	handle = FUNC1(path, GENERIC_READ, FILE_SHARE_READ, NULL,
		OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if (handle == INVALID_HANDLE_VALUE) {
		FUNC12("  Could not open image '%s'", path);
		goto out;
	}

	is_bootable_img = (BOOLEAN)FUNC3(path);
	if (img_report.compression_type == BLED_COMPRESSION_NONE)
		is_bootable_img = (BOOLEAN)FUNC0(handle, "  Image", FALSE);

	if (!FUNC2(handle, &liImageSize)) {
		FUNC12("  Could not get image size: %s", FUNC6());
		goto out;
	}
	img_report.image_size = (uint64_t)liImageSize.QuadPart;

	size = sizeof(vhd_footer);
	if ((img_report.compression_type == BLED_COMPRESSION_NONE) && (img_report.image_size >= (512 + size))) {
		footer = (vhd_footer*)FUNC8(size);
		ptr.QuadPart = img_report.image_size - size;
		if ( (footer == NULL) || (!FUNC5(handle, ptr, NULL, FILE_BEGIN)) ||
			 (!FUNC4(handle, footer, size, &size, NULL)) || (size != sizeof(vhd_footer)) ) {
			FUNC12("  Could not read VHD footer");
			goto out;
		}
		if (FUNC9(footer->cookie, conectix_str, sizeof(footer->cookie)) == 0) {
			img_report.image_size -= sizeof(vhd_footer);
			if ( (FUNC7(footer->file_format_version) != VHD_FOOTER_FILE_FORMAT_V1_0)
			  || (FUNC7(footer->disk_type) != VHD_FOOTER_TYPE_FIXED_HARD_DISK)) {
				FUNC12("  Unsupported type of VHD image");
				is_bootable_img = FALSE;
				goto out;
			}
			// Might as well validate the checksum while we're at it
			old_checksum = FUNC7(footer->checksum);
			footer->checksum = 0;
			for (checksum=0, i=0; i<sizeof(vhd_footer); i++)
				checksum += ((uint8_t*)footer)[i];
			checksum = ~checksum;
			if (checksum != old_checksum)
				FUNC12("  Warning: VHD footer seems corrupted (checksum: %04X, expected: %04X)", old_checksum, checksum);
			// Need to remove the footer from our payload
			FUNC12("  Image is a Fixed Hard Disk VHD file");
			img_report.is_vhd = TRUE;
		}
	}

out:
	FUNC11(footer);
	FUNC10(handle);
	return is_bootable_img;
}