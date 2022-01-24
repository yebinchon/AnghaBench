#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_18__ {int dwMask; int dwEffects; } ;
struct TYPE_24__ {int /*<<< orphan*/  script_cache; TYPE_1__ fmt; } ;
struct TYPE_23__ {int /*<<< orphan*/  hDC; TYPE_2__* editor; } ;
struct TYPE_22__ {int /*<<< orphan*/  len; int /*<<< orphan*/  offsets; int /*<<< orphan*/  advances; int /*<<< orphan*/  num_glyphs; int /*<<< orphan*/  glyphs; int /*<<< orphan*/  script_analysis; TYPE_8__* style; TYPE_3__* para; } ;
struct TYPE_21__ {int /*<<< orphan*/ * szData; } ;
struct TYPE_20__ {int nFlags; } ;
struct TYPE_19__ {scalar_t__ cPasswordMask; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_4__ ME_String ;
typedef  TYPE_5__ ME_Run ;
typedef  TYPE_6__ ME_Context ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int BOOL ;

/* Variables and functions */
 int CFE_AUTOBACKCOLOR ; 
 int CFM_BACKCOLOR ; 
 int /*<<< orphan*/  ETO_OPAQUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MEPF_COMPLEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_5__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_8__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_8__*,int) ; 

__attribute__((used)) static void FUNC10( ME_Context *c, ME_Run *run, int x, int y, BOOL selected, RECT *sel_rect )
{
    COLORREF text_color = FUNC9( c, run->style, selected );
    COLORREF back_color = FUNC7( c, run->style, selected );
    COLORREF old_text, old_back = 0;
    const WCHAR *text = FUNC8( run, 0 );
    ME_String *masked = NULL;
    const BOOL paint_bg = ( selected
        || ( ( run->style->fmt.dwMask & CFM_BACKCOLOR )
            && !(CFE_AUTOBACKCOLOR & run->style->fmt.dwEffects) )
        );

    if (c->editor->cPasswordMask)
    {
        masked = FUNC2( c->editor->cPasswordMask, run->len );
        text = masked->szData;
    }

    old_text = FUNC5( c->hDC, text_color );
    if (paint_bg) old_back = FUNC4( c->hDC, back_color );

    if (run->para->nFlags & MEPF_COMPLEX)
        FUNC3( c->hDC, &run->style->script_cache, x, y, paint_bg ? ETO_OPAQUE : 0, sel_rect,
                       &run->script_analysis, NULL, 0, run->glyphs, run->num_glyphs, run->advances,
                       NULL, run->offsets );
    else
        FUNC0( c->hDC, x, y, paint_bg ? ETO_OPAQUE : 0, sel_rect, text, run->len, NULL );

    if (paint_bg) FUNC4( c->hDC, old_back );
    FUNC5( c->hDC, old_text );

    FUNC6( c, run, x, y, text_color );

    FUNC1( masked );
    return;
}