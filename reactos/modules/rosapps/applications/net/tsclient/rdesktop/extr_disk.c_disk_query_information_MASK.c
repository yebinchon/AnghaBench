#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct stat {int st_mode; int st_size; int st_nlink; int /*<<< orphan*/  st_ctime; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; } ;
struct TYPE_5__ {TYPE_1__* fileinfo; } ;
struct TYPE_4__ {char* path; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  size_t NTHANDLE ;

/* Variables and functions */
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_ATTRIBUTE_HIDDEN ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int FILE_ATTRIBUTE_READONLY ; 
#define  FileBasicInformation 130 
#define  FileObjectIdInformation 129 
#define  FileStandardInformation 128 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int S_IWUSR ; 
 scalar_t__ FUNC1 (size_t,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

NTSTATUS
FUNC9(RDPCLIENT * This, NTHANDLE handle, uint32 info_class, STREAM out)
{
	uint32 file_attributes, ft_high, ft_low;
	struct stat filestat;
	char *path, *filename;

	path = This->fileinfo[handle].path;

	/* Get information about file */
	if (FUNC1(handle, &filestat) != 0)
	{
		FUNC5("stat");
		FUNC4(out, 0);
		return STATUS_ACCESS_DENIED;
	}

	/* Set file attributes */
	file_attributes = 0;
	if (FUNC0(filestat.st_mode))
		file_attributes |= FILE_ATTRIBUTE_DIRECTORY;

	filename = 1 + FUNC7(path, '/');
	if (filename && filename[0] == '.')
		file_attributes |= FILE_ATTRIBUTE_HIDDEN;

	if (!file_attributes)
		file_attributes |= FILE_ATTRIBUTE_NORMAL;

	if (!(filestat.st_mode & S_IWUSR))
		file_attributes |= FILE_ATTRIBUTE_READONLY;

	/* Return requested data */
	switch (info_class)
	{
		case FileBasicInformation:
			FUNC6(FUNC2(&filestat), &ft_high,
						       &ft_low);
			FUNC3(out, ft_low);	/* create_access_time */
			FUNC3(out, ft_high);

			FUNC6(filestat.st_atime, &ft_high, &ft_low);
			FUNC3(out, ft_low);	/* last_access_time */
			FUNC3(out, ft_high);

			FUNC6(filestat.st_mtime, &ft_high, &ft_low);
			FUNC3(out, ft_low);	/* last_write_time */
			FUNC3(out, ft_high);

			FUNC6(filestat.st_ctime, &ft_high, &ft_low);
			FUNC3(out, ft_low);	/* last_change_time */
			FUNC3(out, ft_high);

			FUNC3(out, file_attributes);
			break;

		case FileStandardInformation:

			FUNC3(out, filestat.st_size);	/* Allocation size */
			FUNC3(out, 0);
			FUNC3(out, filestat.st_size);	/* End of file */
			FUNC3(out, 0);
			FUNC3(out, filestat.st_nlink);	/* Number of links */
			FUNC4(out, 0);	/* Delete pending */
			FUNC4(out, FUNC0(filestat.st_mode) ? 1 : 0);	/* Directory */
			break;

		case FileObjectIdInformation:

			FUNC3(out, file_attributes);	/* File Attributes */
			FUNC3(out, 0);	/* Reparse Tag */
			break;

		default:

			FUNC8("IRP Query (File) Information class: 0x%x\n", info_class);
			return STATUS_INVALID_PARAMETER;
	}
	return STATUS_SUCCESS;
}