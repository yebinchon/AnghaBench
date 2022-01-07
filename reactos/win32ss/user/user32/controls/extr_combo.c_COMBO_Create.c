
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_13__ {scalar_t__ bottom; scalar_t__ left; scalar_t__ top; scalar_t__ right; } ;
struct TYPE_12__ {scalar_t__ top; scalar_t__ left; scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_11__ {int dwStyle; int wState; void* hWndLBox; void* hWndEdit; TYPE_9__ textRect; TYPE_2__ droppedRect; int buttonRect; scalar_t__ owner; scalar_t__ editHeight; scalar_t__ droppedWidth; } ;
typedef int LRESULT ;
typedef int LPPOINT ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int LONG ;
typedef scalar_t__ HWND ;
typedef int HMENU ;
typedef int HINSTANCE ;
typedef scalar_t__ BOOL ;


 int CBCalcPlacement (scalar_t__,TYPE_1__*,TYPE_9__*,int *,TYPE_2__*) ;
 int CBF_EDIT ;
 int CBF_MEASUREITEM ;
 int CBForceDummyResize (TYPE_1__*) ;
 int CBS_AUTOHSCROLL ;
 int CBS_DISABLENOSCROLL ;
 int CBS_DROPDOWN ;
 int CBS_DROPDOWNLIST ;
 int CBS_HASSTRINGS ;
 int CBS_LOWERCASE ;
 int CBS_NOINTEGRALHEIGHT ;
 int CBS_OEMCONVERT ;
 int CBS_OWNERDRAWFIXED ;
 int CBS_OWNERDRAWVARIABLE ;
 int CBS_SIMPLE ;
 int CBS_SORT ;
 int CBS_UPPERCASE ;
 int CB_GETTYPE (TYPE_1__*) ;
 scalar_t__ COMBO_EDITBUTTONSPACE () ;
 scalar_t__ COMBO_YBORDERSIZE () ;
 void* CreateWindowExA (int,char*,int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,TYPE_1__*) ;
 void* CreateWindowExW (int,char const*,int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,TYPE_1__*) ;
 int ERR (char*) ;
 int ES_AUTOHSCROLL ;
 int ES_COMBO ;
 int ES_LEFT ;
 int ES_LOWERCASE ;
 int ES_NOHIDESEL ;
 int ES_OEMCONVERT ;
 int ES_UPPERCASE ;
 scalar_t__ FALSE ;
 int GWLP_HINSTANCE ;
 int GetClientRect (scalar_t__,TYPE_2__*) ;
 scalar_t__ GetWindowLongPtrW (scalar_t__,int ) ;
 int HWND_DESKTOP ;
 scalar_t__ ID_CB_EDIT ;
 scalar_t__ ID_CB_LISTBOX ;
 int IsWindowEnabled (scalar_t__) ;
 int LBS_COMBOBOX ;
 int LBS_DISABLENOSCROLL ;
 int LBS_HASSTRINGS ;
 int LBS_NOINTEGRALHEIGHT ;
 int LBS_NOTIFY ;
 int LBS_SORT ;
 int MapWindowPoints (scalar_t__,int ,int ,int) ;
 int SetParent (void*,int ) ;
 int TRACE (char*) ;
 scalar_t__ TRUE ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_CLIPSIBLINGS ;
 int WS_DISABLED ;
 int WS_EX_CLIENTEDGE ;
 int WS_EX_TOOLWINDOW ;
 int WS_EX_TOPMOST ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;

__attribute__((used)) static LRESULT COMBO_Create( HWND hwnd, LPHEADCOMBO lphc, HWND hwndParent, LONG style,
                             BOOL unicode )
{
  static const WCHAR clbName[] = {'C','o','m','b','o','L','B','o','x',0};
  static const WCHAR editName[] = {'E','d','i','t',0};

  if( !CB_GETTYPE(lphc) ) lphc->dwStyle |= CBS_SIMPLE;
  if( CB_GETTYPE(lphc) != CBS_DROPDOWNLIST ) lphc->wState |= CBF_EDIT;

  lphc->owner = hwndParent;





  lphc->droppedWidth = lphc->editHeight = 0;




  lphc->wState |= CBF_MEASUREITEM;



  if( lphc->owner || !(style & WS_VISIBLE) )
  {
      UINT lbeStyle = 0;
      UINT lbeExStyle = 0;






      GetClientRect( hwnd, &lphc->droppedRect );
      CBCalcPlacement(hwnd, lphc, &lphc->textRect, &lphc->buttonRect, &lphc->droppedRect );




      if ( CB_GETTYPE(lphc) != CBS_SIMPLE )
      {
 lphc->droppedRect.top = lphc->textRect.bottom + COMBO_YBORDERSIZE();




 if( CB_GETTYPE(lphc) == CBS_DROPDOWN )
   lphc->droppedRect.left += COMBO_EDITBUTTONSPACE();

        if (lphc->droppedRect.bottom < lphc->droppedRect.top)
            lphc->droppedRect.bottom = lphc->droppedRect.top;
        if (lphc->droppedRect.right < lphc->droppedRect.left)
            lphc->droppedRect.right = lphc->droppedRect.left;
        MapWindowPoints( hwnd, 0, (LPPOINT)&lphc->droppedRect, 2 );
      }



      lbeStyle = (LBS_NOTIFY | LBS_COMBOBOX | WS_BORDER | WS_CLIPSIBLINGS | WS_CHILD) |
                 (style & (WS_VSCROLL | CBS_OWNERDRAWFIXED | CBS_OWNERDRAWVARIABLE));

      if( lphc->dwStyle & CBS_SORT )
 lbeStyle |= LBS_SORT;
      if( lphc->dwStyle & CBS_HASSTRINGS )
 lbeStyle |= LBS_HASSTRINGS;
      if( lphc->dwStyle & CBS_NOINTEGRALHEIGHT )
 lbeStyle |= LBS_NOINTEGRALHEIGHT;
      if( lphc->dwStyle & CBS_DISABLENOSCROLL )
 lbeStyle |= LBS_DISABLENOSCROLL;

      if( CB_GETTYPE(lphc) == CBS_SIMPLE )
      {
 lbeStyle |= WS_VISIBLE;





 lbeStyle &= ~WS_BORDER;
 lbeExStyle |= WS_EX_CLIENTEDGE;
      }
      else
      {
        lbeExStyle |= (WS_EX_TOPMOST | WS_EX_TOOLWINDOW);
      }

      if (unicode)
          lphc->hWndLBox = CreateWindowExW(lbeExStyle, clbName, ((void*)0), lbeStyle,
                                           lphc->droppedRect.left,
                                           lphc->droppedRect.top,
                                           lphc->droppedRect.right - lphc->droppedRect.left,
                                           lphc->droppedRect.bottom - lphc->droppedRect.top,
                                           hwnd, (HMENU)ID_CB_LISTBOX,
                                           (HINSTANCE)GetWindowLongPtrW( hwnd, GWLP_HINSTANCE ), lphc );
      else
          lphc->hWndLBox = CreateWindowExA(lbeExStyle, "ComboLBox", ((void*)0), lbeStyle,
                                           lphc->droppedRect.left,
                                           lphc->droppedRect.top,
                                           lphc->droppedRect.right - lphc->droppedRect.left,
                                           lphc->droppedRect.bottom - lphc->droppedRect.top,
                                           hwnd, (HMENU)ID_CB_LISTBOX,
                                           (HINSTANCE)GetWindowLongPtrW( hwnd, GWLP_HINSTANCE ), lphc );

      if( lphc->hWndLBox )
      {
   BOOL bEdit = TRUE;
   lbeStyle = WS_CHILD | WS_VISIBLE | ES_NOHIDESEL | ES_LEFT | ES_COMBO;

   if( lphc->wState & CBF_EDIT )
   {
       if( lphc->dwStyle & CBS_OEMCONVERT )
    lbeStyle |= ES_OEMCONVERT;
       if( lphc->dwStyle & CBS_AUTOHSCROLL )
    lbeStyle |= ES_AUTOHSCROLL;
       if( lphc->dwStyle & CBS_LOWERCASE )
    lbeStyle |= ES_LOWERCASE;
       else if( lphc->dwStyle & CBS_UPPERCASE )
    lbeStyle |= ES_UPPERCASE;

              if (!IsWindowEnabled(hwnd)) lbeStyle |= WS_DISABLED;

              if (unicode)
                  lphc->hWndEdit = CreateWindowExW(0, editName, ((void*)0), lbeStyle,
                                                   lphc->textRect.left, lphc->textRect.top,
                                                   lphc->textRect.right - lphc->textRect.left,
                                                   lphc->textRect.bottom - lphc->textRect.top,
                                                   hwnd, (HMENU)ID_CB_EDIT,
                                                   (HINSTANCE)GetWindowLongPtrW( hwnd, GWLP_HINSTANCE ), ((void*)0) );
              else
                  lphc->hWndEdit = CreateWindowExA(0, "Edit", ((void*)0), lbeStyle,
                                                   lphc->textRect.left, lphc->textRect.top,
                                                   lphc->textRect.right - lphc->textRect.left,
                                                   lphc->textRect.bottom - lphc->textRect.top,
                                                   hwnd, (HMENU)ID_CB_EDIT,
                                                   (HINSTANCE)GetWindowLongPtrW( hwnd, GWLP_HINSTANCE ), ((void*)0) );

       if( !lphc->hWndEdit )
  bEdit = FALSE;
   }

          if( bEdit )
   {
     if( CB_GETTYPE(lphc) != CBS_SIMPLE )
     {

       SetParent(lphc->hWndLBox, HWND_DESKTOP);






       CBForceDummyResize(lphc);
     }

     TRACE("init done\n");
     return 0;
   }
   ERR("edit control failure.\n");
      } else ERR("listbox failure.\n");
  } else ERR("no owner for visible combo.\n");



  return -1;
}
