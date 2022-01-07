
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {scalar_t__ self; int owner; } ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBRUSH ;


 scalar_t__ CB_DISABLED (TYPE_1__*) ;
 int COLOR_GRAYTEXT ;
 int COLOR_WINDOW ;
 scalar_t__ GetControlColor (int ,scalar_t__,scalar_t__,int ) ;
 int GetSysColor (int ) ;
 scalar_t__ GetSysColorBrush (int ) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int SetTextColor (scalar_t__,int ) ;
 int WM_CTLCOLOREDIT ;
 int WM_CTLCOLORSTATIC ;

__attribute__((used)) static HBRUSH COMBO_PrepareColors(
  LPHEADCOMBO lphc,
  HDC hDC)
{
  HBRUSH hBkgBrush;




  if (CB_DISABLED(lphc))
  {



    hBkgBrush = (HBRUSH)SendMessageW(lphc->owner, WM_CTLCOLORSTATIC,
         (WPARAM)hDC, (LPARAM)lphc->self );






    SetTextColor(hDC, GetSysColor(COLOR_GRAYTEXT));
  }
  else
  {




      hBkgBrush = (HBRUSH)SendMessageW(lphc->owner, WM_CTLCOLOREDIT,
           (WPARAM)hDC, (LPARAM)lphc->self );

  }




  if( !hBkgBrush )
    hBkgBrush = GetSysColorBrush(COLOR_WINDOW);

  return hBkgBrush;
}
