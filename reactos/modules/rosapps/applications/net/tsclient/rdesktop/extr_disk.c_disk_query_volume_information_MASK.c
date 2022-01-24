#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct fileinfo {int /*<<< orphan*/  path; } ;
struct STATFS_T {int f_blocks; int f_bfree; int f_bsize; } ;
struct TYPE_7__ {int serial; int /*<<< orphan*/  type; int /*<<< orphan*/  label; } ;
struct TYPE_6__ {struct fileinfo* fileinfo; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  size_t NTHANDLE ;
typedef  TYPE_2__ FsInfoType ;

/* Variables and functions */
 int FS_CASE_IS_PRESERVED ; 
 int FS_CASE_SENSITIVE ; 
 int FUNC0 (struct STATFS_T) ; 
#define  FileFsAttributeInformation 136 
#define  FileFsControlInformation 135 
#define  FileFsDeviceInformation 134 
#define  FileFsFullSizeInformation 133 
#define  FileFsLabelInformation 132 
#define  FileFsMaximumInformation 131 
#define  FileFsObjectIdInformation 130 
#define  FileFsSizeInformation 129 
#define  FileFsVolumeInformation 128 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct STATFS_T*) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

NTSTATUS
FUNC9(RDPCLIENT * This, NTHANDLE handle, uint32 info_class, STREAM out)
{
	struct STATFS_T stat_fs;
	struct fileinfo *pfinfo;
	FsInfoType *fsinfo;

	pfinfo = &(This->fileinfo[handle]);

	if (FUNC2(pfinfo->path, &stat_fs) != 0)
	{
		FUNC5("statfs");
		return STATUS_ACCESS_DENIED;
	}

	fsinfo = FUNC1(pfinfo->path);

	switch (info_class)
	{
		case FileFsVolumeInformation:

			FUNC3(out, 0);	/* volume creation time low */
			FUNC3(out, 0);	/* volume creation time high */
			FUNC3(out, fsinfo->serial);	/* serial */

			FUNC3(out, 2 * FUNC7(fsinfo->label));	/* length of string */

			FUNC4(out, 0);	/* support objects? */
			FUNC6(This, out, fsinfo->label, 2 * FUNC7(fsinfo->label) - 2);
			break;

		case FileFsSizeInformation:

			FUNC3(out, stat_fs.f_blocks);	/* Total allocation units low */
			FUNC3(out, 0);	/* Total allocation high units */
			FUNC3(out, stat_fs.f_bfree);	/* Available allocation units */
			FUNC3(out, 0);	/* Available allowcation units */
			FUNC3(out, stat_fs.f_bsize / 0x200);	/* Sectors per allocation unit */
			FUNC3(out, 0x200);	/* Bytes per sector */
			break;

		case FileFsAttributeInformation:

			FUNC3(out, FS_CASE_SENSITIVE | FS_CASE_IS_PRESERVED);	/* fs attributes */
			FUNC3(out, FUNC0(stat_fs));	/* max length of filename */

			FUNC3(out, 2 * FUNC7(fsinfo->type));	/* length of fs_type */
			FUNC6(This, out, fsinfo->type, 2 * FUNC7(fsinfo->type) - 2);
			break;

		case FileFsLabelInformation:
		case FileFsDeviceInformation:
		case FileFsControlInformation:
		case FileFsFullSizeInformation:
		case FileFsObjectIdInformation:
		case FileFsMaximumInformation:

		default:

			FUNC8("IRP Query Volume Information class: 0x%x\n", info_class);
			return STATUS_INVALID_PARAMETER;
	}
	return STATUS_SUCCESS;
}