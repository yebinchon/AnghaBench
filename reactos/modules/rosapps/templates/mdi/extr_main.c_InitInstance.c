
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int toolbarBtns ;
struct TYPE_9__ {int member_0; int member_1; int member_11; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; } ;
typedef TYPE_1__ WNDCLASSEX ;
struct TYPE_10__ {int member_0; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; } ;
typedef TYPE_2__ WNDCLASS ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_12__ {int member_0; int member_1; } ;
struct TYPE_11__ {int member_0; int member_1; int member_3; int member_2; } ;
typedef TYPE_3__ TBBUTTON ;
typedef int LPCTSTR ;
typedef int LPARAM ;
typedef TYPE_4__ INITCOMMONCONTROLSEX ;
typedef int HMENU ;
typedef int HINSTANCE ;
typedef int HICON ;
typedef int HDC ;
typedef int BOOL ;
typedef scalar_t__ ATOM ;


 int CS_CLASSDC ;
 int CS_DBLCLKS ;
 int CS_HREDRAW ;
 int CS_VREDRAW ;
 int CW_USEDEFAULT ;
 int CheckMenuItem (int ,int ,int) ;
 int ChildWndProc ;
 int CreateFont (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CreateStatusWindow (int,char*,int ,int ) ;
 int CreateToolbarEx (int ,int,int ,int,int ,int ,TYPE_3__*,int,int,int,int,int,int) ;
 int CreateWindowEx (int ,int ,int ,int,int ,int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FrameWndProc ;
 int GetDC (int ) ;
 int GetDeviceCaps (int ,int ) ;
 int GetSubMenu (int ,int ) ;
 int GetSystemMetrics (int ) ;
 int ICC_BAR_CLASSES ;
 int IDB_TOOLBAR ;
 int IDC_ARROW ;
 int IDC_MDI_APP ;
 int IDC_STATUSBAR ;
 int IDC_TOOLBAR ;
 int IDI_MDI_APP ;
 int ID_OPTIONS_MENU ;
 int ID_OPTIONS_STATUSBAR ;
 int ID_OPTIONS_TOOLBAR ;
 int ID_WINDOW_CASCADE ;
 int ID_WINDOW_NEW_WINDOW ;
 int ID_WINDOW_TILE_HORZ ;
 int ID_WINDOW_TILE_VERT ;
 int IMAGE_ICON ;
 scalar_t__ InitCommonControlsEx (TYPE_4__*) ;
 int LOGPIXELSY ;
 int LR_SHARED ;
 int LoadAccelerators (int ,int ) ;
 int LoadCursor (int ,int ) ;
 int LoadIcon (int ,int ) ;
 int LoadImage (int ,int ,int ,int ,int ,int ) ;
 int LoadMenu (int ,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int MF_GRAYED ;
 int MulDiv (int,int ,int) ;
 scalar_t__ RegisterClass (TYPE_2__*) ;
 scalar_t__ RegisterClassEx (TYPE_1__*) ;
 int ReleaseDC (int ,int ) ;
 int SBT_NOBORDERS ;
 int SB_SETPARTS ;
 int SM_CXSMICON ;
 int SM_CYSMICON ;
 int SendMessage (int ,int ,int,int ) ;
 int ShowWindow (int ,int) ;
 int TBSTATE_ENABLED ;
 int TBSTYLE_BUTTON ;
 int TBSTYLE_SEP ;
 int TRUE ;
 int UpdateStatusBar () ;
 int UpdateWindow (int ) ;
 int WS_CHILD ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int _T (char*) ;
 int hAccel ;
 int hFont ;
 int hFrameWnd ;
 int hMenuFrame ;
 int hStatusBar ;
 int hToolBar ;
 int szChildClass ;
 int szFrameClass ;
 int szTitle ;

BOOL InitInstance(HINSTANCE hInstance, int nCmdShow)
{
    WNDCLASSEX wcFrame = {
        sizeof(WNDCLASSEX),
        CS_HREDRAW | CS_VREDRAW ,
        FrameWndProc,
        0 ,
        0 ,
        hInstance,
        LoadIcon(hInstance, MAKEINTRESOURCE(IDI_MDI_APP)),
        LoadCursor(0, IDC_ARROW),
        0 ,
        0 ,
        szFrameClass,
        (HICON)LoadImage(hInstance, MAKEINTRESOURCE(IDI_MDI_APP), IMAGE_ICON,
            GetSystemMetrics(SM_CXSMICON), GetSystemMetrics(SM_CYSMICON), LR_SHARED)
    };
    ATOM hFrameWndClass = RegisterClassEx(&wcFrame);
    HMENU hMenu = LoadMenu(hInstance, MAKEINTRESOURCE(IDC_MDI_APP));
    HMENU hMenuOptions = GetSubMenu(hMenu, ID_OPTIONS_MENU);


    INITCOMMONCONTROLSEX icc = {
        sizeof(INITCOMMONCONTROLSEX),
        ICC_BAR_CLASSES
    };

    HDC hdc = GetDC(0);

    hMenuFrame = hMenu;

    hAccel = LoadAccelerators(hInstance, MAKEINTRESOURCE(IDC_MDI_APP));
    hFont = CreateFont(-MulDiv(8,GetDeviceCaps(hdc,LOGPIXELSY),72), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, _T("MS Sans Serif"));
    ReleaseDC(0, hdc);

    hFrameWnd = CreateWindowEx(0, (LPCTSTR)(ULONG_PTR)hFrameWndClass, szTitle,

                    WS_OVERLAPPEDWINDOW | WS_CLIPCHILDREN,
                    CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
                    ((void*)0) , hMenuFrame, hInstance, ((void*)0) );
    if (!hFrameWnd) {
        return FALSE;
    }

    if (InitCommonControlsEx(&icc))
    {
        int nParts[3];
        TBBUTTON toolbarBtns[] = {
            {0, 0, 0, TBSTYLE_SEP},
            {0, ID_WINDOW_NEW_WINDOW, TBSTATE_ENABLED, TBSTYLE_BUTTON},
            {1, ID_WINDOW_CASCADE, TBSTATE_ENABLED, TBSTYLE_BUTTON},
            {2, ID_WINDOW_TILE_HORZ, TBSTATE_ENABLED, TBSTYLE_BUTTON},
            {3, ID_WINDOW_TILE_VERT, TBSTATE_ENABLED, TBSTYLE_BUTTON},
            {4, 2 , TBSTATE_ENABLED, TBSTYLE_BUTTON},
            {5, 2 , TBSTATE_ENABLED, TBSTYLE_BUTTON},
        };

        hToolBar = CreateToolbarEx(hFrameWnd, WS_CHILD|WS_VISIBLE,
            IDC_TOOLBAR, 2, hInstance, IDB_TOOLBAR, toolbarBtns,
            sizeof(toolbarBtns)/sizeof(TBBUTTON), 16, 15, 16, 15, sizeof(TBBUTTON));
        CheckMenuItem(hMenuOptions, ID_OPTIONS_TOOLBAR, MF_BYCOMMAND|MF_CHECKED);


        hStatusBar = CreateStatusWindow(WS_VISIBLE|WS_CHILD|WS_CLIPSIBLINGS|SBT_NOBORDERS,
                                        "", hFrameWnd, IDC_STATUSBAR);
        if (!hStatusBar)
            return FALSE;
        CheckMenuItem(hMenuOptions, ID_OPTIONS_STATUSBAR, MF_BYCOMMAND|MF_CHECKED);


        nParts[0] = 100;
        nParts[1] = 210;
        nParts[2] = 400;
        SendMessage(hStatusBar, SB_SETPARTS, 3, (LPARAM)nParts);
    } else {
        CheckMenuItem(hMenuOptions, ID_OPTIONS_TOOLBAR, MF_BYCOMMAND|MF_GRAYED);
        CheckMenuItem(hMenuOptions, ID_OPTIONS_STATUSBAR, MF_BYCOMMAND|MF_GRAYED);
 }

    ShowWindow(hFrameWnd, nCmdShow);
    UpdateWindow(hFrameWnd);
    UpdateStatusBar();
    return TRUE;
}
