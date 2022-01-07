
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {scalar_t__ iBitmap; void* fsState; void* fsStyle; int idCommand; } ;
typedef TYPE_1__ TBBUTTON ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HMENU ;
typedef scalar_t__ HIMAGELIST ;
typedef int HICON ;
typedef int DWORD ;


 void* BTNS_AUTOSIZE ;
 int CreateIconFromResourceEx (unsigned char*,int ,int ,int,int ,int ,int ) ;
 int CreateWindowEx (int ,int ,int *,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int DestroyIcon (int ) ;
 int FALSE ;
 unsigned char* GetResource (int ,int ,int ,char*,int *,int ) ;
 int GetSystemMetrics (int ) ;
 int IDC_HASH ;
 scalar_t__ IDC_HASH_TOOLBAR ;
 int IDC_SAVE ;
 scalar_t__ IDC_SAVE_TOOLBAR ;
 scalar_t__ IDI_HASH_16 ;
 scalar_t__ IDI_SAVE_16 ;
 int ILC_COLOR32 ;
 int ILC_HIGHQUALITYSCALE ;
 int ILC_MIRROR ;
 int ImageList_AddIcon (scalar_t__,int ) ;
 scalar_t__ ImageList_Create (int,int,int,int,int ) ;
 int MAKEINTRESOURCEA (scalar_t__) ;
 int SM_CXSMICON ;
 int SendMessage (int ,int ,int ,int ) ;
 void* TBSTATE_ENABLED ;
 int TB_ADDBUTTONS ;
 int TB_BUTTONSTRUCTSIZE ;
 int TB_SETIMAGELIST ;
 int TOOLBARCLASSNAME ;
 int TOOLBAR_STYLE ;
 int TRUE ;
 int _RT_RCDATA ;
 int hHashToolbar ;
 int hMainDialog ;
 int hMainInstance ;
 int hSaveToolbar ;
 int memset (TYPE_1__*,int ,int) ;

void CreateSmallButtons(HWND hDlg)
{
 HIMAGELIST hImageList;
 HICON hIconSave, hIconHash;
 int icon_offset = 0, i16 = GetSystemMetrics(SM_CXSMICON);
 TBBUTTON tbToolbarButtons[1];
 unsigned char* buffer;
 DWORD bufsize;

 if (i16 >= 28)
  icon_offset = 20;
 else if (i16 >= 20)
  icon_offset = 10;

 hSaveToolbar = CreateWindowEx(0, TOOLBARCLASSNAME, ((void*)0), TOOLBAR_STYLE,
  0, 0, 0, 0, hMainDialog, (HMENU)IDC_SAVE_TOOLBAR, hMainInstance, ((void*)0));
 hImageList = ImageList_Create(i16, i16, ILC_COLOR32 | ILC_HIGHQUALITYSCALE | ILC_MIRROR, 1, 0);
 buffer = GetResource(hMainInstance, MAKEINTRESOURCEA(IDI_SAVE_16 + icon_offset), _RT_RCDATA, "save icon", &bufsize, FALSE);
 hIconSave = CreateIconFromResourceEx(buffer, bufsize, TRUE, 0x30000, 0, 0, 0);
 ImageList_AddIcon(hImageList, hIconSave);
 DestroyIcon(hIconSave);
 SendMessage(hSaveToolbar, TB_SETIMAGELIST, (WPARAM)0, (LPARAM)hImageList);
 SendMessage(hSaveToolbar, TB_BUTTONSTRUCTSIZE, (WPARAM)sizeof(TBBUTTON), 0);
 memset(tbToolbarButtons, 0, sizeof(TBBUTTON));
 tbToolbarButtons[0].idCommand = IDC_SAVE;
 tbToolbarButtons[0].fsStyle = BTNS_AUTOSIZE;
 tbToolbarButtons[0].fsState = TBSTATE_ENABLED;
 tbToolbarButtons[0].iBitmap = 0;
 SendMessage(hSaveToolbar, TB_ADDBUTTONS, (WPARAM)1, (LPARAM)&tbToolbarButtons);

 hHashToolbar = CreateWindowEx(0, TOOLBARCLASSNAME, ((void*)0), TOOLBAR_STYLE,
  0, 0, 0, 0, hMainDialog, (HMENU)IDC_HASH_TOOLBAR, hMainInstance, ((void*)0));
 hImageList = ImageList_Create(i16, i16, ILC_COLOR32 | ILC_HIGHQUALITYSCALE | ILC_MIRROR, 1, 0);
 buffer = GetResource(hMainInstance, MAKEINTRESOURCEA(IDI_HASH_16 + icon_offset), _RT_RCDATA, "hash icon", &bufsize, FALSE);
 hIconHash = CreateIconFromResourceEx(buffer, bufsize, TRUE, 0x30000, 0, 0, 0);
 ImageList_AddIcon(hImageList, hIconHash);
 DestroyIcon(hIconHash);
 SendMessage(hHashToolbar, TB_SETIMAGELIST, (WPARAM)0, (LPARAM)hImageList);
 SendMessage(hHashToolbar, TB_BUTTONSTRUCTSIZE, (WPARAM)sizeof(TBBUTTON), 0);
 memset(tbToolbarButtons, 0, sizeof(TBBUTTON));
 tbToolbarButtons[0].idCommand = IDC_HASH;
 tbToolbarButtons[0].fsStyle = BTNS_AUTOSIZE;
 tbToolbarButtons[0].fsState = TBSTATE_ENABLED;
 tbToolbarButtons[0].iBitmap = 0;
 SendMessage(hHashToolbar, TB_ADDBUTTONS, (WPARAM)1, (LPARAM)&tbToolbarButtons);
}
