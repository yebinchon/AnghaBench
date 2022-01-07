
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WORD ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_9__ {int idResult; scalar_t__ hUserFont; int yBaseUnit; int xBaseUnit; } ;
struct TYPE_8__ {int style; int exStyle; scalar_t__ windowName; scalar_t__ className; scalar_t__ windowNameFree; scalar_t__ data; scalar_t__ id; int cy; int cx; int y; int x; } ;
struct TYPE_7__ {int style; int dialogEx; int nbItems; } ;
typedef int * LPVOID ;
typedef int * LPSTR ;
typedef scalar_t__ LPCSTR ;
typedef int INT ;
typedef int * HWND ;
typedef int HMENU ;
typedef int HINSTANCE ;
typedef int DWORD ;
typedef TYPE_1__ DLG_TEMPLATE ;
typedef TYPE_2__ DLG_CONTROL_INFO ;
typedef TYPE_3__ DIALOGINFO ;
typedef scalar_t__ BOOL ;


 int BM_SETSTYLE ;
 int BS_PUSHBUTTON ;
 int CP_ACP ;
 int * CreateWindowExA (int,int *,int *,int,int ,int ,int ,int ,int *,int ,int ,int *) ;
 int * CreateWindowExW (int,scalar_t__,scalar_t__,int,int ,int ,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ DIALOG_GetControl32 (int const*,TYPE_2__*,int ) ;
 int DLGC_DEFPUSHBUTTON ;
 int DS_NOFAILCREATE ;
 scalar_t__ FALSE ;
 TYPE_3__* GETDLGINFO (int *) ;
 int GWLP_ID ;
 int GetProcessHeap () ;
 int GetWindowLongPtrA (int *,int ) ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int IS_INTRESOURCE (int *) ;
 int MulDiv (int ,int ,int) ;
 int SendMessageW (int *,int ,int ,scalar_t__) ;
 int TRACE (char*) ;
 scalar_t__ TRUE ;
 int WARN (char*,int ,int ) ;
 int WM_GETDLGCODE ;
 int WM_SETFONT ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_EX_CLIENTEDGE ;
 int WS_EX_NOPARENTNOTIFY ;
 int WS_POPUP ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,int *,int ,int *,int *) ;
 int debugstr_w (scalar_t__) ;

__attribute__((used)) static BOOL DIALOG_CreateControls32( HWND hwnd, LPCSTR template, const DLG_TEMPLATE *dlgTemplate,
                                     HINSTANCE hInst, BOOL unicode )
{
    DIALOGINFO * dlgInfo;
    DLG_CONTROL_INFO info;
    HWND hwndCtrl, hwndDefButton = 0;
    INT items = dlgTemplate->nbItems;

    if (!(dlgInfo = GETDLGINFO(hwnd))) return FALSE;

    TRACE(" BEGIN\n" );
    while (items--)
    {
        template = (LPCSTR)DIALOG_GetControl32( (const WORD *)template, &info,
                                                dlgTemplate->dialogEx );
        info.style &= ~WS_POPUP;
        info.style |= WS_CHILD;

        if (info.style & WS_BORDER)
        {
            info.style &= ~WS_BORDER;
            info.exStyle |= WS_EX_CLIENTEDGE;
        }

        if (unicode)
        {
            hwndCtrl = CreateWindowExW( info.exStyle | WS_EX_NOPARENTNOTIFY,
                                        info.className, info.windowName,
                                        info.style | WS_CHILD,
                                        MulDiv(info.x, dlgInfo->xBaseUnit, 4),
                                        MulDiv(info.y, dlgInfo->yBaseUnit, 8),
                                        MulDiv(info.cx, dlgInfo->xBaseUnit, 4),
                                        MulDiv(info.cy, dlgInfo->yBaseUnit, 8),
                                        hwnd, (HMENU)(ULONG_PTR)info.id,
                                        hInst, (LPVOID)info.data );
        }
        else
        {
            LPSTR class = (LPSTR)info.className;
            LPSTR caption = (LPSTR)info.windowName;

            if (!IS_INTRESOURCE(class))
            {
                DWORD len = WideCharToMultiByte( CP_ACP, 0, info.className, -1, ((void*)0), 0, ((void*)0), ((void*)0) );
                class = HeapAlloc( GetProcessHeap(), 0, len );
                if (class != ((void*)0))
                    WideCharToMultiByte( CP_ACP, 0, info.className, -1, class, len, ((void*)0), ((void*)0) );
            }
            if (!IS_INTRESOURCE(caption))
            {
                DWORD len = WideCharToMultiByte( CP_ACP, 0, info.windowName, -1, ((void*)0), 0, ((void*)0), ((void*)0) );
                caption = HeapAlloc( GetProcessHeap(), 0, len );
                if (caption != ((void*)0))
                    WideCharToMultiByte( CP_ACP, 0, info.windowName, -1, caption, len, ((void*)0), ((void*)0) );
            }

            if (class != ((void*)0) && caption != ((void*)0))
            {
                hwndCtrl = CreateWindowExA( info.exStyle | WS_EX_NOPARENTNOTIFY,
                                            class, caption, info.style | WS_CHILD,
                                            MulDiv(info.x, dlgInfo->xBaseUnit, 4),
                                            MulDiv(info.y, dlgInfo->yBaseUnit, 8),
                                            MulDiv(info.cx, dlgInfo->xBaseUnit, 4),
                                            MulDiv(info.cy, dlgInfo->yBaseUnit, 8),
                                            hwnd, (HMENU)(ULONG_PTR)info.id,
                                            hInst, (LPVOID)info.data );
            }
            else
                hwndCtrl = ((void*)0);
            if (!IS_INTRESOURCE(class)) HeapFree( GetProcessHeap(), 0, class );
            if (!IS_INTRESOURCE(caption)) HeapFree( GetProcessHeap(), 0, caption );
        }

        if (info.windowNameFree)
        {
            HeapFree( GetProcessHeap(), 0, (LPVOID)info.windowName );
        }

        if (!hwndCtrl)
        {
            WARN("control %s %s creation failed\n", debugstr_w(info.className),
                  debugstr_w(info.windowName));
            if (dlgTemplate->style & DS_NOFAILCREATE) continue;
            return FALSE;
        }


        if (dlgInfo->hUserFont) SendMessageW( hwndCtrl, WM_SETFONT,
                                             (WPARAM)dlgInfo->hUserFont, 0 );
        if (SendMessageW(hwndCtrl, WM_GETDLGCODE, 0, 0) & DLGC_DEFPUSHBUTTON)
        {


            if (hwndDefButton)
                SendMessageW( hwndDefButton, BM_SETSTYLE, BS_PUSHBUTTON, FALSE );
            hwndDefButton = hwndCtrl;
            dlgInfo->idResult = GetWindowLongPtrA( hwndCtrl, GWLP_ID );
        }
    }
    TRACE(" END\n" );
    return TRUE;
}
