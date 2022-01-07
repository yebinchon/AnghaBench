
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hMainWnd; scalar_t__ hdrivebar; } ;
struct TYPE_4__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;


 int DestroyWindow (scalar_t__) ;
 int GetClientRect (int ,TYPE_1__*) ;
 TYPE_2__ Globals ;
 int MAKELONG (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_SIZE ;
 int create_drive_bar () ;

__attribute__((used)) static void refresh_drives(void)
{
 RECT rect;


 DestroyWindow(Globals.hdrivebar);
 Globals.hdrivebar = 0;


 create_drive_bar();


 GetClientRect(Globals.hMainWnd, &rect);
 SendMessageW(Globals.hMainWnd, WM_SIZE, 0, MAKELONG(rect.right, rect.bottom));
}
