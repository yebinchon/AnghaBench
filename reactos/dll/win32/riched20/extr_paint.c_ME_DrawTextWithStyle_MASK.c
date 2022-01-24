#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_13__ ;

/* Type definitions */
struct TYPE_27__ {TYPE_1__* editor; int /*<<< orphan*/  hDC; } ;
struct TYPE_26__ {int len; TYPE_13__* style; } ;
struct TYPE_25__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_24__ {int dwEffects; int dwMask; } ;
struct TYPE_23__ {int styleFlags; scalar_t__ bEmulateVersion10; scalar_t__ bHaveFocus; int /*<<< orphan*/  bHideSelection; } ;
struct TYPE_22__ {TYPE_2__ fmt; } ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__ ME_Run ;
typedef  TYPE_5__ ME_Context ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int BOOL ;

/* Variables and functions */
 int CFE_AUTOBACKCOLOR ; 
 int CFM_BACKCOLOR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  DSTINVERT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int ES_NOHIDESEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RGN_AND ; 
 int /*<<< orphan*/  RGN_COPY ; 
 int /*<<< orphan*/  RGN_DIFF ; 
 int TRUE ; 
 int FUNC9 (TYPE_5__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_4__*,int,int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_4__*,int,int,int,TYPE_3__*) ; 

__attribute__((used)) static void FUNC12(ME_Context *c, ME_Run *run, int x, int y,
                                 int nSelFrom, int nSelTo, int ymin, int cy)
{
  HDC hDC = c->hDC;
  HGDIOBJ hOldFont;
  int yOffset = 0;
  BOOL selected = (nSelFrom < run->len && nSelTo >= 0
                   && nSelFrom < nSelTo && !c->editor->bHideSelection &&
                   (c->editor->bHaveFocus || (c->editor->styleFlags & ES_NOHIDESEL)));
  BOOL old_style_selected = FALSE;
  RECT sel_rect;
  HRGN clip = NULL, sel_rgn = NULL;

  yOffset = FUNC9( c, run->style );

  if (selected)
  {
    FUNC11( c, run, nSelFrom, nSelTo, cy, &sel_rect );
    FUNC7( &sel_rect, x, ymin );

    if (c->editor->bEmulateVersion10)
    {
      old_style_selected = TRUE;
      selected = FALSE;
    }
    else
    {
      sel_rgn = FUNC1( &sel_rect );
      clip = FUNC0( 0, 0, 0, 0 );
      if (FUNC4( hDC, clip ) != 1)
      {
        FUNC2( clip );
        clip = NULL;
      }
    }
  }

  hOldFont = FUNC5( c, run->style );

  if (sel_rgn) FUNC3( hDC, sel_rgn, RGN_DIFF );

  if (!(run->style->fmt.dwEffects & CFE_AUTOBACKCOLOR)
      && (run->style->fmt.dwMask & CFM_BACKCOLOR) )
  {
    RECT tmp_rect;
    FUNC11( c, run, 0, run->len, cy, &tmp_rect );
    FUNC7( &tmp_rect, x, ymin );
    FUNC10( c, run, x, y - yOffset, FALSE, &tmp_rect );
  }
  else
    FUNC10( c, run, x, y - yOffset, FALSE, NULL );

  if (sel_rgn)
  {
    FUNC3( hDC, clip, RGN_COPY );
    FUNC3( hDC, sel_rgn, RGN_AND );
    FUNC10( c, run, x, y - yOffset, TRUE, &sel_rect );
    FUNC3( hDC, clip, RGN_COPY );
    if (clip) FUNC2( clip );
    FUNC2( sel_rgn );
  }

  if (old_style_selected)
    FUNC8( hDC, sel_rect.left, ymin, sel_rect.right - sel_rect.left, cy, DSTINVERT );

  FUNC6(c, run->style, hOldFont);
}