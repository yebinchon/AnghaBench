#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int UINT ;
struct TYPE_13__ {scalar_t__ bottom; scalar_t__ left; scalar_t__ top; scalar_t__ right; } ;
struct TYPE_12__ {scalar_t__ top; scalar_t__ left; scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_11__ {int dwStyle; int wState; void* hWndLBox; void* hWndEdit; TYPE_9__ textRect; TYPE_2__ droppedRect; int /*<<< orphan*/  buttonRect; scalar_t__ owner; scalar_t__ editHeight; scalar_t__ droppedWidth; } ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPPOINT ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  int LONG ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*,TYPE_9__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int CBF_EDIT ; 
 int CBF_MEASUREITEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
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
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 void* FUNC5 (int,char*,int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC6 (int,char const*,int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int ES_AUTOHSCROLL ; 
 int ES_COMBO ; 
 int ES_LEFT ; 
 int ES_LOWERCASE ; 
 int ES_NOHIDESEL ; 
 int ES_OEMCONVERT ; 
 int ES_UPPERCASE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GWLP_HINSTANCE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HWND_DESKTOP ; 
 scalar_t__ ID_CB_EDIT ; 
 scalar_t__ ID_CB_LISTBOX ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int LBS_COMBOBOX ; 
 int LBS_DISABLENOSCROLL ; 
 int LBS_HASSTRINGS ; 
 int LBS_NOINTEGRALHEIGHT ; 
 int LBS_NOTIFY ; 
 int LBS_SORT ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
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

__attribute__((used)) static LRESULT FUNC14( HWND hwnd, LPHEADCOMBO lphc, HWND hwndParent, LONG style,
                             BOOL unicode )
{
  static const WCHAR clbName[] = {'C','o','m','b','o','L','B','o','x',0};
  static const WCHAR editName[] = {'E','d','i','t',0};

  if( !FUNC2(lphc) ) lphc->dwStyle |= CBS_SIMPLE;
  if( FUNC2(lphc) != CBS_DROPDOWNLIST ) lphc->wState |= CBF_EDIT;

  lphc->owner = hwndParent;

  /*
   * The item height and dropped width are not set when the control
   * is created.
   */
  lphc->droppedWidth = lphc->editHeight = 0;

  /*
   * The first time we go through, we want to measure the ownerdraw item
   */
  lphc->wState |= CBF_MEASUREITEM;

  /* M$ IE 3.01 actually creates (and rapidly destroys) an ownerless combobox */

  if( lphc->owner || !(style & WS_VISIBLE) )
  {
      UINT lbeStyle   = 0;
      UINT lbeExStyle = 0;

      /*
       * Initialize the dropped rect to the size of the client area of the
       * control and then, force all the areas of the combobox to be
       * recalculated.
       */
      FUNC8( hwnd, &lphc->droppedRect );
      FUNC0(hwnd, lphc, &lphc->textRect, &lphc->buttonRect, &lphc->droppedRect );

      /*
       * Adjust the position of the popup listbox if it's necessary
       */
      if ( FUNC2(lphc) != CBS_SIMPLE )
      {
	lphc->droppedRect.top   = lphc->textRect.bottom + FUNC4();

	/*
	 * If it's a dropdown, the listbox is offset
	 */
	if( FUNC2(lphc) == CBS_DROPDOWN )
	  lphc->droppedRect.left += FUNC3();

        if (lphc->droppedRect.bottom < lphc->droppedRect.top)
            lphc->droppedRect.bottom = lphc->droppedRect.top;
        if (lphc->droppedRect.right < lphc->droppedRect.left)
            lphc->droppedRect.right = lphc->droppedRect.left;
        FUNC11( hwnd, 0, (LPPOINT)&lphc->droppedRect, 2 );
      }

      /* create listbox popup */

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

      if( FUNC2(lphc) == CBS_SIMPLE ) 	/* child listbox */
      {
	lbeStyle |= WS_VISIBLE;

	/*
	 * In win 95 look n feel, the listbox in the simple combobox has
	 * the WS_EXCLIENTEDGE style instead of the WS_BORDER style.
	 */
	lbeStyle   &= ~WS_BORDER;
	lbeExStyle |= WS_EX_CLIENTEDGE;
      }
      else
      {
        lbeExStyle |= (WS_EX_TOPMOST | WS_EX_TOOLWINDOW);
      }

      if (unicode)
          lphc->hWndLBox = FUNC6(lbeExStyle, clbName, NULL, lbeStyle,
                                           lphc->droppedRect.left,
                                           lphc->droppedRect.top,
                                           lphc->droppedRect.right - lphc->droppedRect.left,
                                           lphc->droppedRect.bottom - lphc->droppedRect.top,
                                           hwnd, (HMENU)ID_CB_LISTBOX,
                                           (HINSTANCE)FUNC9( hwnd, GWLP_HINSTANCE ), lphc );
      else
          lphc->hWndLBox = FUNC5(lbeExStyle, "ComboLBox", NULL, lbeStyle,
                                           lphc->droppedRect.left,
                                           lphc->droppedRect.top,
                                           lphc->droppedRect.right - lphc->droppedRect.left,
                                           lphc->droppedRect.bottom - lphc->droppedRect.top,
                                           hwnd, (HMENU)ID_CB_LISTBOX,
                                           (HINSTANCE)FUNC9( hwnd, GWLP_HINSTANCE ), lphc );

      if( lphc->hWndLBox )
      {
	  BOOL	bEdit = TRUE;
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

              if (!FUNC10(hwnd)) lbeStyle |= WS_DISABLED;

              if (unicode)
                  lphc->hWndEdit = FUNC6(0, editName, NULL, lbeStyle,
                                                   lphc->textRect.left, lphc->textRect.top,
                                                   lphc->textRect.right - lphc->textRect.left,
                                                   lphc->textRect.bottom - lphc->textRect.top,
                                                   hwnd, (HMENU)ID_CB_EDIT,
                                                   (HINSTANCE)FUNC9( hwnd, GWLP_HINSTANCE ), NULL );
              else
                  lphc->hWndEdit = FUNC5(0, "Edit", NULL, lbeStyle,
                                                   lphc->textRect.left, lphc->textRect.top,
                                                   lphc->textRect.right - lphc->textRect.left,
                                                   lphc->textRect.bottom - lphc->textRect.top,
                                                   hwnd, (HMENU)ID_CB_EDIT,
                                                   (HINSTANCE)FUNC9( hwnd, GWLP_HINSTANCE ), NULL );

	      if( !lphc->hWndEdit )
		bEdit = FALSE;
	  }

          if( bEdit )
	  {
	    if( FUNC2(lphc) != CBS_SIMPLE )
	    {
              /* Now do the trick with parent */
	      FUNC12(lphc->hWndLBox, HWND_DESKTOP);
              /*
               * If the combo is a dropdown, we must resize the control
	       * to fit only the text area and button. To do this,
	       * we send a dummy resize and the WM_WINDOWPOSCHANGING message
	       * will take care of setting the height for us.
               */
	      FUNC1(lphc);
	    }

	    FUNC13("init done\n");
	    return 0;
	  }
	  FUNC7("edit control failure.\n");
      } else FUNC7("listbox failure.\n");
  } else FUNC7("no owner for visible combo.\n");

  /* CreateWindow() will send WM_NCDESTROY to cleanup */

  return -1;
}