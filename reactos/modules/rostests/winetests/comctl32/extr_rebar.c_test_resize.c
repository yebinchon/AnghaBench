
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cx; int cy; int x; int y; scalar_t__ flags; int * hwndInsertAfter; int hwnd; } ;
typedef TYPE_1__ WINDOWPOS ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int ARRAY_SIZE (int*) ;
 int CCS_BOTTOM ;
 int CCS_NODIVIDER ;
 int CCS_NOMOVEY ;
 int CCS_NOPARENTALIGN ;
 int CCS_NORESIZE ;
 int CCS_RIGHT ;
 int CCS_TOP ;
 int CCS_VERT ;
 int CreateWindowA (int ,char*,int,int,int,int,int,int ,int *,int ,int ) ;
 int DestroyWindow (int ) ;
 int GetModuleHandleA (int *) ;
 int MAKELONG (int,int) ;
 int MoveWindow (int ,int,int,int,int,int ) ;
 int RB_DELETEBAND ;
 int REBARCLASSNAMEA ;
 int SIZE_RESTORED ;
 int SendMessageA (int ,int ,int ,int ) ;
 int SetRect (int *,int,int,int,int) ;
 int TRUE ;
 int WM_SIZE ;
 int WM_WINDOWPOSCHANGED ;
 int WM_WINDOWPOSCHANGING ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int add_band_w (int ,int *,int,int,int ) ;
 int check_client () ;
 int comment (char*,int) ;
 int hMainWnd ;
 int height_change_notify_rect ;

__attribute__((used)) static void test_resize(void)
{
    DWORD dwStyles[] = {CCS_TOP, CCS_TOP | CCS_NODIVIDER, CCS_BOTTOM, CCS_BOTTOM | CCS_NODIVIDER, CCS_VERT, CCS_RIGHT,
        CCS_NOPARENTALIGN, CCS_NOPARENTALIGN | CCS_NODIVIDER, CCS_NORESIZE, CCS_NOMOVEY, CCS_NOMOVEY | CCS_VERT,
        CCS_TOP | WS_BORDER, CCS_NOPARENTALIGN | CCS_NODIVIDER | WS_BORDER, CCS_NORESIZE | WS_BORDER,
        CCS_NOMOVEY | WS_BORDER};

    const int styles_count = ARRAY_SIZE(dwStyles);
    int i;

    for (i = 0; i < styles_count; i++)
    {
        HWND hRebar;

        comment("style %08x", dwStyles[i]);
        SetRect(&height_change_notify_rect, -1, -1, -1, -1);
        hRebar = CreateWindowA(REBARCLASSNAMEA, "A", dwStyles[i] | WS_CHILD | WS_VISIBLE, 10, 5, 500, 15, hMainWnd, ((void*)0), GetModuleHandleA(((void*)0)), 0);
        check_client();
        add_band_w(hRebar, ((void*)0), 70, 100, 0);
        if (dwStyles[i] & CCS_NOPARENTALIGN)
            check_client();
        add_band_w(hRebar, ((void*)0), 70, 100, 0);
        check_client();
        MoveWindow(hRebar, 10, 10, 100, 100, TRUE);
        check_client();
        MoveWindow(hRebar, 0, 0, 0, 0, TRUE);
        check_client();

        if (dwStyles[i] & (CCS_NORESIZE | CCS_NOPARENTALIGN))
        {
            WINDOWPOS pos;
            pos.hwnd = hRebar;
            pos.hwndInsertAfter = ((void*)0);
            pos.cx = 500;
            pos.cy = 500;
            pos.x = 10;
            pos.y = 10;
            pos.flags = 0;
            SendMessageA(hRebar, WM_WINDOWPOSCHANGING, 0, (LPARAM)&pos);
            SendMessageA(hRebar, WM_WINDOWPOSCHANGED, 0, (LPARAM)&pos);
            check_client();
            SendMessageA(hRebar, WM_SIZE, SIZE_RESTORED, MAKELONG(500, 500));
            check_client();
        }
        SendMessageA(hRebar, RB_DELETEBAND, 0, 0);
        check_client();
        SendMessageA(hRebar, RB_DELETEBAND, 0, 0);
        MoveWindow(hRebar, 0, 0, 100, 100, TRUE);
        check_client();
        DestroyWindow(hRebar);
    }
}
