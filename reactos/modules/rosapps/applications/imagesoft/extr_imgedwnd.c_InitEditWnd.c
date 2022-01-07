
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int Zoom; int hSelf; TYPE_2__* MainWnd; struct TYPE_10__* Next; TYPE_1__* OpenInfo; int * hDCMem; } ;
struct TYPE_9__ {TYPE_3__* ImageEditors; } ;
struct TYPE_8__ {scalar_t__ CreateNew; } ;
typedef TYPE_3__* PEDIT_WND_INFO ;
typedef int HDC ;
typedef int BOOL ;


 int * CreateCompatibleDC (int ) ;
 int DeleteObject (int *) ;
 int EditWndUpdateScrollInfo (TYPE_3__*) ;
 int GetDC (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int LoadBlankCanvas (TYPE_3__*) ;
 int LoadDIBImage (TYPE_3__*) ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL
InitEditWnd(PEDIT_WND_INFO Info)
{


    Info->Zoom = 100;

    if (Info->OpenInfo != ((void*)0))
    {
        HDC hDC;

        if (Info->hDCMem)
        {
            DeleteObject(Info->hDCMem);
            Info->hDCMem = ((void*)0);
        }

        hDC = GetDC(Info->hSelf);
        Info->hDCMem = CreateCompatibleDC(hDC);
        ReleaseDC(Info->hSelf, hDC);

        if (Info->OpenInfo->CreateNew)
        {
            LoadBlankCanvas(Info);
        }
        else
        {
            LoadDIBImage(Info);
        }

        Info->OpenInfo = ((void*)0);
    }

    EditWndUpdateScrollInfo(Info);


    Info->Next = Info->MainWnd->ImageEditors;
    Info->MainWnd->ImageEditors = Info;

    InvalidateRect(Info->hSelf,
                   ((void*)0),
                   TRUE);


    return TRUE;
}
