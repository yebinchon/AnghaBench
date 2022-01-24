#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int Zoom; int /*<<< orphan*/  hSelf; TYPE_2__* MainWnd; struct TYPE_10__* Next; TYPE_1__* OpenInfo; int /*<<< orphan*/ * hDCMem; } ;
struct TYPE_9__ {TYPE_3__* ImageEditors; } ;
struct TYPE_8__ {scalar_t__ CreateNew; } ;
typedef  TYPE_3__* PEDIT_WND_INFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC8(PEDIT_WND_INFO Info)
{
    //BOOL bRet = FALSE;

    Info->Zoom = 100;

    if (Info->OpenInfo != NULL)
    {
        HDC hDC;

        if (Info->hDCMem)
        {
            FUNC1(Info->hDCMem);
            Info->hDCMem = NULL;
        }

        hDC = FUNC3(Info->hSelf);
        Info->hDCMem = FUNC0(hDC);
        FUNC7(Info->hSelf, hDC);

        if (Info->OpenInfo->CreateNew)
        {
            FUNC5(Info);
        }
        else
        {
            FUNC6(Info);
        }

        Info->OpenInfo = NULL;
    }

    FUNC2(Info);

    /* Add image editor to the list */
    Info->Next = Info->MainWnd->ImageEditors;
    Info->MainWnd->ImageEditors = Info;

    FUNC4(Info->hSelf,
                   NULL,
                   TRUE);

    /* FIXME - if returning FALSE, remove the image editor from the list! */
    return TRUE;
}