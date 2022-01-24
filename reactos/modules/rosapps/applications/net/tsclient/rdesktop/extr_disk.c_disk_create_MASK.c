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
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  notify_stamp; TYPE_2__* fileinfo; TYPE_1__* rdpdr_device; } ;
struct TYPE_6__ {size_t device_id; size_t flags_and_attributes; size_t accessmask; int /*<<< orphan*/  delete_on_close; int /*<<< orphan*/  path; int /*<<< orphan*/ * pdir; } ;
struct TYPE_5__ {char* local_path; } ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int NTHANDLE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
#define  CREATE_ALWAYS 136 
#define  CREATE_NEW 135 
 int FUNC0 (int /*<<< orphan*/ *) ; 
#define  EACCES 134 
#define  EEXIST 133 
#define  EISDIR 132 
#define  ENOENT 131 
 size_t FILE_DIRECTORY_FILE ; 
 size_t FILE_NON_DIRECTORY_FILE ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  False ; 
 size_t GENERIC_ALL ; 
 size_t GENERIC_READ ; 
 size_t GENERIC_WRITE ; 
 int MAX_OPEN_FILES ; 
#define  OPEN_ALWAYS 130 
#define  OPEN_EXISTING 129 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_FILE_IS_A_DIRECTORY ; 
 int /*<<< orphan*/  STATUS_NO_SUCH_FILE ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_COLLISION ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRWXU ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
#define  TRUNCATE_EXISTING 128 
 int /*<<< orphan*/  True ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static NTSTATUS
FUNC14(RDPCLIENT * This, uint32 device_id, uint32 accessmask, uint32 sharemode, uint32 create_disposition,
	    uint32 flags_and_attributes, char *filename, NTHANDLE * phandle)
{
	NTHANDLE handle;
	DIR *dirp;
	int flags, mode;
	char path[PATH_MAX];
	struct stat filestat;

	handle = 0;
	dirp = NULL;
	flags = 0;
	mode = S_IRWXU | S_IRGRP | S_IXGRP | S_IROTH | S_IXOTH;

	if (*filename && filename[FUNC11(filename) - 1] == '/')
		filename[FUNC11(filename) - 1] = 0;
	FUNC9(path, "%s%s", This->rdpdr_device[device_id].local_path, filename);

	switch (create_disposition)
	{
		case CREATE_ALWAYS:

			/* Delete existing file/link. */
			FUNC13(path);
			flags |= O_CREAT;
			break;

		case CREATE_NEW:

			/* If the file already exists, then fail. */
			flags |= O_CREAT | O_EXCL;
			break;

		case OPEN_ALWAYS:

			/* Create if not already exists. */
			flags |= O_CREAT;
			break;

		case OPEN_EXISTING:

			/* Default behaviour */
			break;

		case TRUNCATE_EXISTING:

			/* If the file does not exist, then fail. */
			flags |= O_TRUNC;
			break;
	}

	/*printf("Open: \"%s\"  flags: %X, accessmask: %X sharemode: %X create disp: %X\n", path, flags_and_attributes, accessmask, sharemode, create_disposition); */

	/* Get information about file and set that flag ourselfs */
	if ((FUNC10(path, &filestat) == 0) && (FUNC1(filestat.st_mode)))
	{
		if (flags_and_attributes & FILE_NON_DIRECTORY_FILE)
			return STATUS_FILE_IS_A_DIRECTORY;
		else
			flags_and_attributes |= FILE_DIRECTORY_FILE;
	}

	if (flags_and_attributes & FILE_DIRECTORY_FILE)
	{
		if (flags & O_CREAT)
		{
			FUNC5(path, mode);
		}

		dirp = FUNC7(path);
		if (!dirp)
		{
			switch (errno)
			{
				case EACCES:

					return STATUS_ACCESS_DENIED;

				case ENOENT:

					return STATUS_NO_SUCH_FILE;

				default:

					FUNC8("opendir");
					return STATUS_NO_SUCH_FILE;
			}
		}
		handle = FUNC0(dirp);
	}
	else
	{

		if (accessmask & GENERIC_ALL
		    || (accessmask & GENERIC_READ && accessmask & GENERIC_WRITE))
		{
			flags |= O_RDWR;
		}
		else if ((accessmask & GENERIC_WRITE) && !(accessmask & GENERIC_READ))
		{
			flags |= O_WRONLY;
		}
		else
		{
			flags |= O_RDONLY;
		}

		handle = FUNC6(path, flags, mode);
		if (handle == -1)
		{
			switch (errno)
			{
				case EISDIR:

					return STATUS_FILE_IS_A_DIRECTORY;

				case EACCES:

					return STATUS_ACCESS_DENIED;

				case ENOENT:

					return STATUS_NO_SUCH_FILE;
				case EEXIST:

					return STATUS_OBJECT_NAME_COLLISION;
				default:

					FUNC8("open");
					return STATUS_NO_SUCH_FILE;
			}
		}

		/* all read and writes of files should be non blocking */
		if (FUNC4(handle, F_SETFL, O_NONBLOCK) == -1)
			FUNC8("fcntl");
	}

	if (handle >= MAX_OPEN_FILES)
	{
		FUNC2("Maximum number of open files (%s) reached. Increase MAX_OPEN_FILES!\n",
		      handle);
		FUNC3(1);
	}

	if (dirp)
		This->fileinfo[handle].pdir = dirp;
	else
		This->fileinfo[handle].pdir = NULL;

	This->fileinfo[handle].device_id = device_id;
	This->fileinfo[handle].flags_and_attributes = flags_and_attributes;
	This->fileinfo[handle].accessmask = accessmask;
	FUNC12(This->fileinfo[handle].path, path, PATH_MAX - 1);
	This->fileinfo[handle].delete_on_close = False;
	This->notify_stamp = True;

	*phandle = handle;
	return STATUS_SUCCESS;
}