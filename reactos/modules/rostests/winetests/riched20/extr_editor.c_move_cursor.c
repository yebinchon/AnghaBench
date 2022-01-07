
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* cpMin; void* cpMax; } ;
typedef int LPARAM ;
typedef void* LONG ;
typedef int HWND ;
typedef TYPE_1__ CHARRANGE ;


 int EM_EXSETSEL ;
 int SendMessageA (int ,int ,int ,int ) ;

__attribute__((used)) static void move_cursor(HWND hwnd, LONG charindex)
{
  CHARRANGE cr;
  cr.cpMax = charindex;
  cr.cpMin = charindex;
  SendMessageA(hwnd, EM_EXSETSEL, 0, (LPARAM)&cr);
}
