
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int buf ;
typedef int WCHAR ;
struct TYPE_9__ {int hWndListView; void* hImageListLarge; void* hImageListSmall; int hInst; int hWnd; int hWndStatusBar; } ;
struct TYPE_8__ {int mask; int iSubItem; int cx; int fmt; int * pszText; } ;
struct TYPE_7__ {int right; int left; scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ LVCOLUMNW ;
typedef int LPARAM ;
typedef int HMENU ;
typedef TYPE_3__ CPanel ;
typedef int BOOL ;


 int CreateWindowExW (int ,int ,int *,int,int ,int ,int,scalar_t__,int ,int ,int ,int *) ;
 int FALSE ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetSystemMetrics (int ) ;
 scalar_t__ IDC_LISTVIEW ;
 int IDS_CPANEL_DESCRIPTION ;
 int IDS_CPANEL_NAME ;
 int ILC_COLOR32 ;
 int ILC_MASK ;
 void* ImageList_Create (int ,int ,int,int,int) ;
 int LISTVIEW_DEFSTYLE ;
 int LVCFMT_LEFT ;
 int LVCF_FMT ;
 int LVCF_SUBITEM ;
 int LVCF_TEXT ;
 int LVCF_WIDTH ;
 int LVM_SETIMAGELIST ;
 int LVSIL_NORMAL ;
 int LVSIL_SMALL ;
 int LVS_ICON ;
 int ListView_InsertColumnW (int ,int,TYPE_2__*) ;
 int LoadStringW (int ,int ,int *,int) ;
 int MAX_STRING_LEN ;
 int SM_CXICON ;
 int SM_CXSMICON ;
 int SM_CYICON ;
 int SM_CYSMICON ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int WC_LISTVIEWW ;
 int WS_EX_CLIENTEDGE ;
 int shell32_hInstance ;

__attribute__((used)) static BOOL Control_CreateListView (CPanel *panel)
{
    RECT ws, sb;
    WCHAR empty_string[] = {0};
    WCHAR buf[MAX_STRING_LEN];
    LVCOLUMNW lvc;


    GetClientRect(panel->hWndStatusBar, &sb);
    GetClientRect(panel->hWnd, &ws);

    panel->hWndListView = CreateWindowExW(WS_EX_CLIENTEDGE, WC_LISTVIEWW,
                          empty_string, LISTVIEW_DEFSTYLE | LVS_ICON,
                          0, 0, ws.right - ws.left, ws.bottom - ws.top -
                          (sb.bottom - sb.top), panel->hWnd,
                          (HMENU) IDC_LISTVIEW, panel->hInst, ((void*)0));

    if (!panel->hWndListView)
        return FALSE;


    panel->hImageListSmall = ImageList_Create(GetSystemMetrics(SM_CXSMICON),
        GetSystemMetrics(SM_CYSMICON), ILC_COLOR32 | ILC_MASK, 1, 1);
    panel->hImageListLarge = ImageList_Create(GetSystemMetrics(SM_CXICON),
        GetSystemMetrics(SM_CYICON), ILC_COLOR32 | ILC_MASK, 1, 1);

    SendMessageW(panel->hWndListView, LVM_SETIMAGELIST, LVSIL_SMALL, (LPARAM)panel->hImageListSmall);
    SendMessageW(panel->hWndListView, LVM_SETIMAGELIST, LVSIL_NORMAL, (LPARAM)panel->hImageListLarge);


    lvc.mask = LVCF_FMT | LVCF_TEXT | LVCF_SUBITEM | LVCF_WIDTH;
    lvc.pszText = buf;
    lvc.fmt = LVCFMT_LEFT;


    lvc.iSubItem = 0;
    lvc.cx = (ws.right - ws.left) / 3;
    LoadStringW(shell32_hInstance, IDS_CPANEL_NAME, buf, sizeof(buf) / sizeof(buf[0]));

    if (ListView_InsertColumnW(panel->hWndListView, 0, &lvc) == -1)
        return FALSE;


    lvc.iSubItem = 1;
    lvc.cx = ((ws.right - ws.left) / 3) * 2;
    LoadStringW(shell32_hInstance, IDS_CPANEL_DESCRIPTION, buf, sizeof(buf) /
        sizeof(buf[0]));

    if (ListView_InsertColumnW(panel->hWndListView, 1, &lvc) == -1)
        return FALSE;

    return(TRUE);
}
