#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  file_desc ;
typedef  scalar_t__ VFD_MEDIA ;
typedef  int VFD_FLAGS ;
typedef  int /*<<< orphan*/  VFD_FILETYPE ;
typedef  scalar_t__ VFD_DISKTYPE ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ CHAR ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSG_DISKTYPE_FILE ; 
 int /*<<< orphan*/  MSG_DISKTYPE_RAM_CLEAN ; 
 int /*<<< orphan*/  MSG_DISKTYPE_RAM_DIRTY ; 
 int /*<<< orphan*/  MSG_FILE_DESC ; 
 int /*<<< orphan*/  MSG_GET_FILE_NG ; 
 int /*<<< orphan*/  MSG_GET_LINK_NG ; 
 int /*<<< orphan*/  MSG_IMAGE_NAME ; 
 int /*<<< orphan*/  MSG_IMAGE_NONE ; 
 int /*<<< orphan*/  MSG_MEDIA_PROTECTED ; 
 int /*<<< orphan*/  MSG_MEDIA_TYPE ; 
 int /*<<< orphan*/  MSG_MEDIA_WRITABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ VFD_DISKTYPE_FILE ; 
 int /*<<< orphan*/  VFD_FILETYPE_NONE ; 
 int VFD_FLAG_DATA_MODIFIED ; 
 int VFD_FLAG_WRITE_PROTECTED ; 
 scalar_t__ VFD_MEDIA_NONE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*,int*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void FUNC9(
	HANDLE			hDevice)
{
	ULONG			device_number;
	CHAR			file_name[MAX_PATH];
	CHAR			file_desc[MAX_PATH];
	VFD_DISKTYPE	disk_type;
	VFD_MEDIA		media_type;
	VFD_FLAGS		media_flags;
	VFD_FILETYPE	file_type;
	ULONG			image_size;
	DWORD			ret;

	FUNC8("\n");

	//	get current device number

	ret = FUNC4(hDevice, &device_number);

	if (ret != ERROR_SUCCESS) {
		FUNC2(MSG_GET_LINK_NG);
		FUNC8("%s", FUNC3(ret));
		device_number = (ULONG)-1;
	}

	//	get current drive letters

	FUNC1(hDevice, device_number);

	//	image file information

	ret = FUNC5(hDevice, file_name, &disk_type,
		&media_type, &media_flags, &file_type, &image_size);

	if (ret != ERROR_SUCCESS) {
		FUNC2(MSG_GET_FILE_NG);
		FUNC8("%s", FUNC3(ret));
		return;
	}

	//	print image file information
	if (media_type == VFD_MEDIA_NONE) {
		FUNC2(MSG_IMAGE_NONE);
		return;
	}

	if (file_name[0]) {
		FUNC2(MSG_IMAGE_NAME, file_name);

		FUNC6(file_desc, sizeof(file_desc),
			file_type, image_size, FUNC0(file_name));
	}
	else {
		FUNC2(MSG_IMAGE_NAME, "<RAM>");

		FUNC6(file_desc, sizeof(file_desc),
			VFD_FILETYPE_NONE, image_size, 0);
	}

	FUNC2(MSG_FILE_DESC, file_desc);

	if (disk_type == VFD_DISKTYPE_FILE) {
		FUNC2(MSG_DISKTYPE_FILE);
	}
	else {
		if (media_flags & VFD_FLAG_DATA_MODIFIED) {
			FUNC2(MSG_DISKTYPE_RAM_DIRTY);
		}
		else {
			FUNC2(MSG_DISKTYPE_RAM_CLEAN);
		}
	}

	//	print other file info

	FUNC2(MSG_MEDIA_TYPE, FUNC7(media_type));

	if (media_flags & VFD_FLAG_WRITE_PROTECTED) {
		FUNC2(MSG_MEDIA_PROTECTED);
	}
	else {
		FUNC2(MSG_MEDIA_WRITABLE);
	}
}