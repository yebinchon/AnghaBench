
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_2__ {int hbrGray; } ;
typedef int HDC ;
typedef int HBRUSH ;
typedef scalar_t__ COLORREF ;


 int COLOR_3DFACE ;
 int COLOR_3DHILIGHT ;
 int COLOR_SCROLLBAR ;
 int COLOR_WINDOW ;
 int COLOR_WINDOWTEXT ;
 scalar_t__ CTLCOLOR_EDIT ;
 scalar_t__ CTLCOLOR_LISTBOX ;
 scalar_t__ CTLCOLOR_SCROLLBAR ;
 scalar_t__ GetSysColor (int ) ;
 int GetSysColorBrush (int ) ;
 int SetBkColor (int ,scalar_t__) ;
 int SetTextColor (int ,scalar_t__) ;
 int UnrealizeObject (int ) ;
 TYPE_1__* gpsi ;

HBRUSH
DefWndControlColor(HDC hDC, UINT ctlType)
{
  if (ctlType == CTLCOLOR_SCROLLBAR)
  {
      HBRUSH hb = GetSysColorBrush(COLOR_SCROLLBAR);
      COLORREF bk = GetSysColor(COLOR_3DHILIGHT);
      SetTextColor(hDC, GetSysColor(COLOR_3DFACE));
      SetBkColor(hDC, bk);





      if ( bk == GetSysColor(COLOR_WINDOW))
          return gpsi->hbrGray;

      UnrealizeObject( hb );
      return hb;
  }

  SetTextColor(hDC, GetSysColor(COLOR_WINDOWTEXT));

  if ((ctlType == CTLCOLOR_EDIT) || (ctlType == CTLCOLOR_LISTBOX))
  {
      SetBkColor(hDC, GetSysColor(COLOR_WINDOW));
  }
  else
  {
      SetBkColor(hDC, GetSysColor(COLOR_3DFACE));
      return GetSysColorBrush(COLOR_3DFACE);
  }

  return GetSysColorBrush(COLOR_WINDOW);
}
