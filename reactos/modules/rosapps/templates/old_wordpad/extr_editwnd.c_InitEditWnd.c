
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int * hEdit; int hSelf; } ;
typedef TYPE_1__* PEDIT_WND_INFO ;
typedef scalar_t__ HFONT ;
typedef int * HANDLE ;
typedef int BOOL ;


 int * CreateWindowEx (int ,int ,int *,int,int ,int ,int,int,int ,int *,int ,int *) ;
 int DEFAULT_GUI_FONT ;
 int ES_AUTOHSCROLL ;
 int ES_AUTOVSCROLL ;
 int ES_MULTILINE ;
 int FALSE ;
 int GetError (int ) ;
 scalar_t__ GetStockObject (int ) ;
 int * LoadLibrary (int ) ;
 int MAKELPARAM (int ,int ) ;
 int RICHEDIT_CLASS ;
 int SendMessage (int *,int ,int ,int ) ;
 int TRUE ;
 int WM_SETFONT ;
 int WS_CHILD ;
 int WS_HSCROLL ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;
 int _T (char*) ;
 int hInstance ;

__attribute__((used)) static BOOL
InitEditWnd(PEDIT_WND_INFO Info)
{
    HANDLE hDLL;
    HFONT hfDefault;

    hDLL = LoadLibrary(_T("RICHED20.DLL"));
    if (hDLL == ((void*)0))
    {
        GetError(0);
        return FALSE;
    }

    Info->hEdit = CreateWindowEx(0,
                                 RICHEDIT_CLASS,
                                 ((void*)0),
                                 WS_CHILD | WS_VISIBLE | WS_VSCROLL | WS_HSCROLL |
                                   ES_MULTILINE | ES_AUTOVSCROLL | ES_AUTOHSCROLL,
                                 0,
                                 0,
                                 100,
                                 100,
                                 Info->hSelf,
                                 ((void*)0),
                                 hInstance,
                                 ((void*)0));
    if(Info->hEdit == ((void*)0))
    {
        GetError(0);

        return FALSE;
    }

    hfDefault = (HFONT) GetStockObject(DEFAULT_GUI_FONT);
    SendMessage(Info->hEdit,
                WM_SETFONT,
                (WPARAM)hfDefault,
                MAKELPARAM(FALSE, 0));

    return TRUE;
}
