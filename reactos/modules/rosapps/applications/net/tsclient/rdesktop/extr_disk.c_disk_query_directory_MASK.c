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
typedef  int uint32 ;
struct stat {int st_mode; int st_size; int /*<<< orphan*/  st_ctime; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; } ;
struct fileinfo {char* path; int /*<<< orphan*/  pattern; int /*<<< orphan*/ * pdir; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  fstat ;
struct TYPE_4__ {struct fileinfo* fileinfo; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  size_t NTHANDLE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
#define  EACCES 131 
#define  ELOOP 130 
#define  ENOENT 129 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_ATTRIBUTE_HIDDEN ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int FILE_ATTRIBUTE_READONLY ; 
#define  FileBothDirectoryInformation 128 
 int PATH_MAX ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_NO_MORE_FILES ; 
 int /*<<< orphan*/  STATUS_NO_SUCH_FILE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct stat*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 

NTSTATUS
FUNC18(RDPCLIENT * This, NTHANDLE handle, uint32 info_class, char *pattern, STREAM out)
{
	uint32 file_attributes, ft_low, ft_high;
	char *dirname, fullpath[PATH_MAX];
	DIR *pdir;
	struct dirent *pdirent;
	struct stat fstat;
	struct fileinfo *pfinfo;

	pfinfo = &(This->fileinfo[handle]);
	pdir = pfinfo->pdir;
	dirname = pfinfo->path;
	file_attributes = 0;

	switch (info_class)
	{
		case FileBothDirectoryInformation:

			/* If a search pattern is received, remember this pattern, and restart search */
			if (pattern[0] != 0)
			{
				FUNC15(pfinfo->pattern, 1 + FUNC16(pattern, '/'), PATH_MAX - 1);
				FUNC10(pdir);
			}

			/* find next dirent matching pattern */
			pdirent = FUNC9(pdir);
			while (pdirent && FUNC1(pfinfo->pattern, pdirent->d_name, 0) != 0)
				pdirent = FUNC9(pdir);

			if (pdirent == NULL)
				return STATUS_NO_MORE_FILES;

			/* Get information for directory entry */
			FUNC12(fullpath, "%s/%s", dirname, pdirent->d_name);

			if (FUNC13(fullpath, &fstat))
			{
				switch (errno)
				{
					case ENOENT:
					case ELOOP:
					case EACCES:
						/* These are non-fatal errors. */
						FUNC3(&fstat, 0, sizeof(fstat));
						break;
					default:
						/* Fatal error. By returning STATUS_NO_SUCH_FILE,
						   the directory list operation will be aborted */
						FUNC7(fullpath);
						FUNC5(out, 0);
						return STATUS_NO_SUCH_FILE;
				}
			}

			if (FUNC0(fstat.st_mode))
				file_attributes |= FILE_ATTRIBUTE_DIRECTORY;
			if (pdirent->d_name[0] == '.')
				file_attributes |= FILE_ATTRIBUTE_HIDDEN;
			if (!file_attributes)
				file_attributes |= FILE_ATTRIBUTE_NORMAL;
			if (!(fstat.st_mode & S_IWUSR))
				file_attributes |= FILE_ATTRIBUTE_READONLY;

			/* Return requested information */
			FUNC6(out, 8);	/* unknown zero */

			FUNC11(FUNC2(&fstat), &ft_high, &ft_low);
			FUNC4(out, ft_low);	/* create time */
			FUNC4(out, ft_high);

			FUNC11(fstat.st_atime, &ft_high, &ft_low);
			FUNC4(out, ft_low);	/* last_access_time */
			FUNC4(out, ft_high);

			FUNC11(fstat.st_mtime, &ft_high, &ft_low);
			FUNC4(out, ft_low);	/* last_write_time */
			FUNC4(out, ft_high);

			FUNC11(fstat.st_ctime, &ft_high, &ft_low);
			FUNC4(out, ft_low);	/* change_write_time */
			FUNC4(out, ft_high);

			FUNC4(out, fstat.st_size);	/* filesize low */
			FUNC4(out, 0);	/* filesize high */
			FUNC4(out, fstat.st_size);	/* filesize low */
			FUNC4(out, 0);	/* filesize high */
			FUNC4(out, file_attributes);
			FUNC5(out, 2 * FUNC14(pdirent->d_name) + 2);	/* unicode length */
			FUNC6(out, 7);	/* pad? */
			FUNC5(out, 0);	/* 8.3 file length */
			FUNC6(out, 2 * 12);	/* 8.3 unicode length */
			FUNC8(This, out, pdirent->d_name, 2 * FUNC14(pdirent->d_name));
			break;

		default:
			/* FIXME: Support FileDirectoryInformation,
			   FileFullDirectoryInformation, and
			   FileNamesInformation */

			FUNC17("IRP Query Directory sub: 0x%x\n", info_class);
			return STATUS_INVALID_PARAMETER;
	}

	return STATUS_SUCCESS;
}