#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_14__ {TYPE_1__* editor; int /*<<< orphan*/  hDC; } ;
struct TYPE_13__ {scalar_t__ nWidth; int /*<<< orphan*/  style; } ;
struct TYPE_12__ {int styleFlags; int /*<<< orphan*/  texthost; scalar_t__ bEmulateVersion10; int /*<<< orphan*/  bHaveFocus; scalar_t__ bHideSelection; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_2__ ME_Run ;
typedef  TYPE_3__ ME_Context ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_HIGHLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSTINVERT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ES_NOHIDESEL ; 
 int /*<<< orphan*/  ETO_OPAQUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int,scalar_t__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC14( ME_Context *c, ME_Run *run, int x, int y,
                        BOOL selected, BOOL actually_draw, int ymin, int cy )
{
    HDC hdc = c->hDC;
    BOOL old_style_selected = FALSE;
    RECT rect;
    COLORREF back_color = 0;

    FUNC9( &rect, x, ymin, x + run->nWidth, ymin + cy );

    if (c->editor->bHideSelection || (!c->editor->bHaveFocus &&
                !(c->editor->styleFlags & ES_NOHIDESEL))) selected = FALSE;
    if (c->editor->bEmulateVersion10)
    {
        old_style_selected = selected;
        selected = FALSE;
    }

    if (selected)
        back_color = FUNC4( c->editor->texthost, COLOR_HIGHLIGHT );

    if (actually_draw)
    {
        COLORREF text_color = FUNC13( c, run->style, selected );
        COLORREF old_text, old_back;
        HFONT old_font = NULL;
        int y_offset = FUNC11( c, run->style );
        static const WCHAR space[1] = {' '};

        old_font = FUNC5( c, run->style );
        old_text = FUNC10( hdc, text_color );
        if (selected) old_back = FUNC8( hdc, back_color );

        FUNC2( hdc, x, y - y_offset, selected ? ETO_OPAQUE : 0, &rect, space, 1, &run->nWidth );

        if (selected) FUNC8( hdc, old_back );
        FUNC10( hdc, old_text );
        FUNC6( c, run->style, old_font );

        FUNC12( c, run, x, y - y_offset, text_color );
    }
    else if (selected)
    {
        HBRUSH brush = FUNC0( back_color );
        FUNC3( hdc, &rect, brush );
        FUNC1( brush );
    }

    if (old_style_selected)
        FUNC7( hdc, x, ymin, run->nWidth, cy, DSTINVERT );
}