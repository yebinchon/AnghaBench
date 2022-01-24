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
struct TYPE_4__ {scalar_t__ RelatedFileObject; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/ * PNTFS_FCB ;
typedef  TYPE_1__* PFILE_OBJECT ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TAG_NTFS ; 

__attribute__((used)) static
NTSTATUS
FUNC9(PDEVICE_EXTENSION DeviceExt,
             PFILE_OBJECT FileObject,
             PWSTR FileName,
             BOOLEAN CaseSensitive,
             PNTFS_FCB * FoundFCB)
{
    PNTFS_FCB ParentFcb;
    PNTFS_FCB Fcb;
    NTSTATUS Status;
    PWSTR AbsFileName = NULL;

    FUNC0("NtfsOpenFile(%p, %p, %S, %s, %p)\n",
            DeviceExt,
            FileObject,
            FileName,
            CaseSensitive ? "TRUE" : "FALSE",
            FoundFCB);

    *FoundFCB = NULL;

    if (FileObject->RelatedFileObject)
    {
        FUNC0("Converting relative filename to absolute filename\n");

        Status = FUNC7(FileObject->RelatedFileObject,
                                          FileName,
                                          &AbsFileName);
        if (AbsFileName) FileName = AbsFileName;
        if (!FUNC3(Status))
        {
            return Status;
        }
    }

    //FIXME: Get canonical path name (remove .'s, ..'s and extra separators)

    FUNC0("PathName to open: %S\n", FileName);

    /*  try first to find an existing FCB in memory  */
    FUNC0("Checking for existing FCB in memory\n");
    Fcb = FUNC6(DeviceExt,
                               FileName);
    if (Fcb == NULL)
    {
        FUNC0("No existing FCB found, making a new one if file exists.\n");
        Status = FUNC5(DeviceExt,
                                   &ParentFcb,
                                   &Fcb,
                                   FileName,
                                   CaseSensitive);
        if (ParentFcb != NULL)
        {
            FUNC8(DeviceExt,
                           ParentFcb);
        }

        if (!FUNC3(Status))
        {
            FUNC0("Could not make a new FCB, status: %x\n", Status);

            if (AbsFileName)
                FUNC2(AbsFileName, TAG_NTFS);

            return Status;
        }
    }

    FUNC0("Attaching FCB to fileObject\n");
    Status = FUNC4(DeviceExt,
                                       Fcb,
                                       FileObject);

    if (AbsFileName)
        FUNC1(AbsFileName);

    *FoundFCB = Fcb;

    return Status;
}