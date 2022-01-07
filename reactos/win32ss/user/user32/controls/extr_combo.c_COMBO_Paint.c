
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int wState; int self; int textRect; int buttonRect; } ;
typedef int RECT ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBRUSH ;


 scalar_t__ BeginPaint (int ,int *) ;
 int CBF_EDIT ;
 int CBF_NOREDRAW ;
 int CBPaintBorder (int ,TYPE_1__*,scalar_t__) ;
 int CBPaintButton (TYPE_1__*,scalar_t__,int ) ;
 int CBPaintText (TYPE_1__*,scalar_t__) ;
 scalar_t__ CBS_DROPDOWNLIST ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int COLOR_WINDOW ;
 scalar_t__ COMBO_PrepareColors (TYPE_1__*,scalar_t__) ;
 int EDIT_CONTROL_PADDING () ;
 int EndPaint (int ,int *) ;
 int FillRect (scalar_t__,int *,scalar_t__) ;
 int FrameRect (scalar_t__,int *,int ) ;
 int GetSysColorBrush (int ) ;
 int InflateRect (int *,int ,int ) ;
 int IsRectEmpty (int *) ;
 scalar_t__ SelectObject (scalar_t__,scalar_t__) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static LRESULT COMBO_Paint(LPHEADCOMBO lphc, HDC hParamDC)
{
  PAINTSTRUCT ps;
  HDC hDC;

  hDC = (hParamDC) ? hParamDC
     : BeginPaint( lphc->self, &ps);

  TRACE("hdc=%p\n", hDC);

  if( hDC && !(lphc->wState & CBF_NOREDRAW) )
  {
      HBRUSH hPrevBrush, hBkgBrush;





      hBkgBrush = COMBO_PrepareColors(lphc, hDC);

      hPrevBrush = SelectObject( hDC, hBkgBrush );
      if (!(lphc->wState & CBF_EDIT))
        FillRect(hDC, &lphc->textRect, hBkgBrush);




      CBPaintBorder(lphc->self, lphc, hDC);

      if( !IsRectEmpty(&lphc->buttonRect) )
      {
 CBPaintButton(lphc, hDC, lphc->buttonRect);
      }


      if (CB_GETTYPE(lphc) != CBS_DROPDOWNLIST)
      {
          RECT rPadEdit = lphc->textRect;

          InflateRect(&rPadEdit, EDIT_CONTROL_PADDING(), EDIT_CONTROL_PADDING());

          FrameRect( hDC, &rPadEdit, GetSysColorBrush(COLOR_WINDOW) );
      }

      if( !(lphc->wState & CBF_EDIT) )
 CBPaintText( lphc, hDC );

      if( hPrevBrush )
 SelectObject( hDC, hPrevBrush );
  }

  if( !hParamDC )
    EndPaint(lphc->self, &ps);

  return 0;
}
