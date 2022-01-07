
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int b1 ;
typedef char WCHAR ;
struct TYPE_7__ {int hdrivebar; scalar_t__* drives; int hInstance; int hMainWnd; } ;
struct TYPE_5__ {int member_1; int member_0; } ;
struct TYPE_6__ {int iBitmap; int iString; int idCommand; int member_6; int member_5; TYPE_1__ member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ TBBUTTON ;
typedef scalar_t__* PWSTR ;
typedef int LPARAM ;


 int BTNS_BUTTON ;
 int BUFFER_LEN ;
 int CCS_NOMOVEY ;
 int CreateToolbarEx (int ,int,int ,int,int ,int ,TYPE_2__*,int ,int,int,int,int,int) ;




 int GetDriveTypeW (scalar_t__*) ;
 int GetLogicalDriveStringsW (int,scalar_t__*) ;
 TYPE_3__ Globals ;
 int IDB_DRIVEBAR ;
 int IDS_SHELL ;
 int IDW_DRIVEBAR ;
 int ID_DRIVE_FIRST ;
 int ID_DRIVE_SHELL_NS ;
 int ID_DRIVE_UNIX_FS ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TBSTATE_ENABLED ;
 int TBSTYLE_LIST ;
 int TB_ADDSTRINGW ;
 int TB_INSERTBUTTONW ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int load_string (char*,int,int ) ;
 int lstrlenW (char*) ;

__attribute__((used)) static void create_drive_bar(void)
{
 TBBUTTON drivebarBtn = {0, 0, TBSTATE_ENABLED, BTNS_BUTTON, {0, 0}, 0, 0};
 WCHAR b1[BUFFER_LEN];
 int btn = 1;
 PWSTR p;

 GetLogicalDriveStringsW(BUFFER_LEN, Globals.drives);

 Globals.hdrivebar = CreateToolbarEx(Globals.hMainWnd, WS_CHILD|WS_VISIBLE|CCS_NOMOVEY|TBSTYLE_LIST,
    IDW_DRIVEBAR, 2, Globals.hInstance, IDB_DRIVEBAR, &drivebarBtn,
    0, 16, 13, 16, 13, sizeof(TBBUTTON));
 load_string(b1, sizeof(b1)/sizeof(b1[0]), IDS_SHELL);
 b1[lstrlenW(b1)+1] = '\0';
 SendMessageW(Globals.hdrivebar, TB_ADDSTRINGW, 0, (LPARAM)b1);

 drivebarBtn.idCommand = ID_DRIVE_SHELL_NS;
 SendMessageW(Globals.hdrivebar, TB_INSERTBUTTONW, btn++, (LPARAM)&drivebarBtn);
 drivebarBtn.iString++;


 SendMessageW(Globals.hdrivebar, TB_ADDSTRINGW, 0, (LPARAM)Globals.drives);

 drivebarBtn.idCommand = ID_DRIVE_FIRST;

 for(p=Globals.drives; *p; ) {
  switch(GetDriveTypeW(p)) {
   case 128: drivebarBtn.iBitmap = 1; break;
   case 131: drivebarBtn.iBitmap = 3; break;
   case 129: drivebarBtn.iBitmap = 4; break;
   case 130: drivebarBtn.iBitmap = 5; break;
   default: drivebarBtn.iBitmap = 2;
  }

  SendMessageW(Globals.hdrivebar, TB_INSERTBUTTONW, btn++, (LPARAM)&drivebarBtn);
  drivebarBtn.idCommand++;
  drivebarBtn.iString++;

  while(*p++);
 }
}
