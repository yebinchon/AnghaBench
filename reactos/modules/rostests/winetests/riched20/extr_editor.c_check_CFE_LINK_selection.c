
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int text_format ;
struct TYPE_2__ {int cbSize; int dwEffects; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ CHARFORMAT2A ;
typedef int BOOL ;


 int CFE_LINK ;
 int EM_GETCHARFORMAT ;
 int EM_SETSEL ;
 int SCF_SELECTION ;
 int SendMessageA (int ,int ,int,int) ;

__attribute__((used)) static BOOL check_CFE_LINK_selection(HWND hwnd, int sel_start, int sel_end)
{
  CHARFORMAT2A text_format;
  text_format.cbSize = sizeof(text_format);
  SendMessageA(hwnd, EM_SETSEL, sel_start, sel_end);
  SendMessageA(hwnd, EM_GETCHARFORMAT, SCF_SELECTION, (LPARAM)&text_format);
  return (text_format.dwEffects & CFE_LINK) != 0;
}
