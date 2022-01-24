#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ USHORT ;
struct TYPE_27__ {int* Buffer; int Length; int MaximumLength; } ;
typedef  TYPE_2__ UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_29__ {int Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_26__ {int Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_28__ {TYPE_1__ LongNameU; TYPE_4__ PathNameU; struct TYPE_28__* parentFcb; } ;
typedef  int* PWCHAR ;
typedef  TYPE_3__* PVFATFCB ;
typedef  TYPE_4__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NameBuffer ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_2__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 
 scalar_t__ STATUS_OBJECT_NAME_INVALID ; 
 scalar_t__ STATUS_OBJECT_NAME_NOT_FOUND ; 
 scalar_t__ STATUS_OBJECT_PATH_NOT_FOUND ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_3__*) ; 

NTSTATUS
FUNC17(
    PDEVICE_EXTENSION pVCB,
    PVFATFCB *pParentFCB,
    PVFATFCB *pFCB,
    PUNICODE_STRING pFileNameU)
{
    NTSTATUS status;
    PVFATFCB FCB = NULL;
    PVFATFCB parentFCB;
    UNICODE_STRING NameU;
    UNICODE_STRING RootNameU = FUNC3(L"\\");
    UNICODE_STRING FileNameU;
    WCHAR NameBuffer[260];
    PWCHAR curr, prev, last;
    ULONG Length;

    FUNC1("vfatGetFCBForFile (%p,%p,%p,%wZ)\n",
           pVCB, pParentFCB, pFCB, pFileNameU);

    FUNC9(&FileNameU, NameBuffer, sizeof(NameBuffer));

    parentFCB = *pParentFCB;

    if (parentFCB == NULL)
    {
        /* Passed-in name is the full name */
        FUNC7(&FileNameU, pFileNameU);

        //  Trivial case, open of the root directory on volume
        if (FUNC8(&FileNameU, &RootNameU, FALSE))
        {
            FUNC1("returning root FCB\n");

            FCB = FUNC15(pVCB);
            *pFCB = FCB;
            *pParentFCB = NULL;

            return (FCB != NULL) ? STATUS_SUCCESS : STATUS_OBJECT_PATH_NOT_FOUND;
        }

        /* Check for an existing FCB */
        FCB = FUNC14(pVCB, &FileNameU);
        if (FCB)
        {
            *pFCB = FCB;
            *pParentFCB = FCB->parentFcb;
            FUNC13(pVCB, *pParentFCB);
            return STATUS_SUCCESS;
        }

        last = curr = FileNameU.Buffer + FileNameU.Length / sizeof(WCHAR) - 1;
        while (*curr != L'\\' && curr > FileNameU.Buffer)
        {
            curr--;
        }

        if (curr > FileNameU.Buffer)
        {
            NameU.Buffer = FileNameU.Buffer;
            NameU.MaximumLength = NameU.Length = (curr - FileNameU.Buffer) * sizeof(WCHAR);
            FCB = FUNC14(pVCB, &NameU);
            if (FCB)
            {
                Length = (curr - FileNameU.Buffer) * sizeof(WCHAR);
                if (Length != FCB->PathNameU.Length)
                {
                    if (FileNameU.Length + FCB->PathNameU.Length - Length > FileNameU.MaximumLength)
                    {
                        FUNC16(pVCB, FCB);
                        return STATUS_OBJECT_NAME_INVALID;
                    }
                    FUNC10(FileNameU.Buffer + FCB->PathNameU.Length / sizeof(WCHAR),
                        curr, FileNameU.Length - Length);
                    FileNameU.Length += (USHORT)(FCB->PathNameU.Length - Length);
                    curr = FileNameU.Buffer + FCB->PathNameU.Length / sizeof(WCHAR);
                    last = FileNameU.Buffer + FileNameU.Length / sizeof(WCHAR) - 1;
                }
                FUNC6(FileNameU.Buffer, FCB->PathNameU.Buffer, FCB->PathNameU.Length);
            }
        }
        else
        {
            FCB = NULL;
        }

        if (FCB == NULL)
        {
            FCB = FUNC15(pVCB);
            curr = FileNameU.Buffer;
        }

        parentFCB = NULL;
        prev = curr;
    }
    else
    {
        /* Make absolute path */
        FUNC7(&FileNameU, &parentFCB->PathNameU);
        curr = FileNameU.Buffer + FileNameU.Length / sizeof(WCHAR) - 1;
        if (*curr != L'\\')
        {
            FUNC5(&FileNameU, L"\\");
            curr++;
        }
        FUNC0(*curr == L'\\');
        FUNC4(&FileNameU, pFileNameU);

        FCB = parentFCB;
        parentFCB = NULL;
        prev = curr;
        last = FileNameU.Buffer + FileNameU.Length / sizeof(WCHAR) - 1;
    }

    while (curr <= last)
    {
        if (parentFCB)
        {
            FUNC16(pVCB, parentFCB);
            parentFCB = NULL;
        }
        //  fail if element in FCB is not a directory
        if (!FUNC12(FCB))
        {
            FUNC1 ("Element in requested path is not a directory\n");

            FUNC16(pVCB, FCB);
            FCB = NULL;
            *pParentFCB = NULL;
            *pFCB = NULL;

            return  STATUS_OBJECT_PATH_NOT_FOUND;
        }
        parentFCB = FCB;
        if (prev < curr)
        {
            Length = (curr - prev) * sizeof(WCHAR);
            if (Length != parentFCB->LongNameU.Length)
            {
                if (FileNameU.Length + parentFCB->LongNameU.Length - Length > FileNameU.MaximumLength)
                {
                    FUNC16(pVCB, parentFCB);
                    *pParentFCB = NULL;
                    *pFCB = NULL;
                    return STATUS_OBJECT_NAME_INVALID;
                }
                FUNC10(prev + parentFCB->LongNameU.Length / sizeof(WCHAR), curr,
                    FileNameU.Length - (curr - FileNameU.Buffer) * sizeof(WCHAR));
                FileNameU.Length += (USHORT)(parentFCB->LongNameU.Length - Length);
                curr = prev + parentFCB->LongNameU.Length / sizeof(WCHAR);
                last = FileNameU.Buffer + FileNameU.Length / sizeof(WCHAR) - 1;
            }
            FUNC6(prev, parentFCB->LongNameU.Buffer, parentFCB->LongNameU.Length);
        }
        curr++;
        prev = curr;
        while (*curr != L'\\' && curr <= last)
        {
            curr++;
        }
        NameU.Buffer = FileNameU.Buffer;
        NameU.Length = (curr - NameU.Buffer) * sizeof(WCHAR);
        NameU.MaximumLength = FileNameU.MaximumLength;
        FUNC1("%wZ\n", &NameU);
        FCB = FUNC14(pVCB, &NameU);
        if (FCB == NULL)
        {
            NameU.Buffer = prev;
            NameU.MaximumLength = NameU.Length = (curr - prev) * sizeof(WCHAR);
            status = FUNC11(pVCB, parentFCB, &NameU, &FCB);
            if (status == STATUS_OBJECT_NAME_NOT_FOUND)
            {
                *pFCB = NULL;
                if (curr > last)
                {
                    *pParentFCB = parentFCB;
                    return STATUS_OBJECT_NAME_NOT_FOUND;
                }
                else
                {
                    FUNC16(pVCB, parentFCB);
                    *pParentFCB = NULL;
                    return STATUS_OBJECT_PATH_NOT_FOUND;
                }
            }
            else if (!FUNC2(status))
            {
                FUNC16(pVCB, parentFCB);
                *pParentFCB = NULL;
                *pFCB = NULL;

                return status;
            }
        }
    }

    *pParentFCB = parentFCB;
    *pFCB = FCB;

    return STATUS_SUCCESS;
}