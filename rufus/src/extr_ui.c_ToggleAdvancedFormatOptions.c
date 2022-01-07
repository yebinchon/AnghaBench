
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int button_info ;
typedef int WPARAM ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; int left; } ;
struct TYPE_6__ {int cx; } ;
struct TYPE_5__ {int cbSize; int * pszText; int dwMask; } ;
typedef TYPE_1__ TBBUTTONINFO ;
typedef TYPE_2__ SIZE ;
typedef TYPE_3__ RECT ;
typedef int POINT ;
typedef int LPARAM ;
typedef scalar_t__ BOOL ;


 int ARRAYSIZE (int *) ;
 scalar_t__ FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,TYPE_3__*) ;
 scalar_t__ IDC_ADVANCED_FORMAT_OPTIONS ;
 int InvalidateRect (int ,int *,int ) ;
 int MSG_120 ;
 int MSG_121 ;
 int MSG_122 ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int MoveCtrlY (int ,int ,int) ;
 int ResizeDialogs (int) ;
 int SW_HIDE ;
 int SW_SHOW ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetWindowPos (int ,int ,int ,scalar_t__,int,scalar_t__,int ) ;
 int ShowWindow (int ,int ) ;
 int TBIF_TEXT ;
 int TB_GETIDEALSIZE ;
 int TB_SETBUTTONINFO ;
 int TB_SETIMAGELIST ;
 int TRUE ;
 int * advanced_format_move_ids ;
 int advanced_format_section_height ;
 int * advanced_format_toggle_ids ;
 int fw ;
 int hAdvancedFormatToolbar ;
 int hClusterSize ;
 scalar_t__ hDownImageList ;
 int hMainDialog ;
 scalar_t__ hUpImageList ;
 int lmprintf (int ,...) ;
 int* section_vpos ;
 int utf8_to_wchar_no_alloc (int ,int *,int) ;
 int ** wtbtext ;

void ToggleAdvancedFormatOptions(BOOL enable)
{
 RECT rc;
 SIZE sz;
 TBBUTTONINFO button_info;
 int i, shift = advanced_format_section_height;

 if (!enable)
  shift = -shift;
 section_vpos[2] += shift;


 utf8_to_wchar_no_alloc(lmprintf((enable) ? MSG_122 : MSG_121, lmprintf(MSG_120)), wtbtext[1], ARRAYSIZE(wtbtext[0]));
 button_info.cbSize = sizeof(button_info);
 button_info.dwMask = TBIF_TEXT;
 button_info.pszText = wtbtext[1];
 SendMessage(hAdvancedFormatToolbar, TB_SETBUTTONINFO, (WPARAM)IDC_ADVANCED_FORMAT_OPTIONS, (LPARAM)&button_info);
 SendMessage(hAdvancedFormatToolbar, TB_SETIMAGELIST, (WPARAM)0, (LPARAM)((enable) ? hUpImageList : hDownImageList));
 GetWindowRect(hAdvancedFormatToolbar, &rc);
 MapWindowPoints(((void*)0), hMainDialog, (POINT*)&rc, 2);
 SendMessage(hAdvancedFormatToolbar, TB_GETIDEALSIZE, (WPARAM)FALSE, (LPARAM)&sz);
 if (sz.cx < 16)
  sz.cx = fw;
 SetWindowPos(hAdvancedFormatToolbar, hClusterSize, rc.left, rc.top, sz.cx, rc.bottom - rc.top, 0);


 for (i = 0; i<ARRAYSIZE(advanced_format_move_ids); i++)
  MoveCtrlY(hMainDialog, advanced_format_move_ids[i], shift);


 for (i = 0; i<ARRAYSIZE(advanced_format_toggle_ids); i++)
  ShowWindow(GetDlgItem(hMainDialog, advanced_format_toggle_ids[i]), enable ? SW_SHOW : SW_HIDE);


 ResizeDialogs(shift);


 InvalidateRect(hMainDialog, ((void*)0), TRUE);
}
