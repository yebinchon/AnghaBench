#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cf ;
typedef  int /*<<< orphan*/  bullet_font ;
typedef  char WCHAR ;
struct TYPE_25__ {int cbSize; int dwMask; int /*<<< orphan*/  bCharSet; int /*<<< orphan*/  szFaceName; } ;
struct TYPE_24__ {int /*<<< orphan*/  hDC; int /*<<< orphan*/  editor; } ;
struct TYPE_21__ {int /*<<< orphan*/ * style; scalar_t__ width; TYPE_10__* text; } ;
struct TYPE_20__ {scalar_t__ wNumbering; } ;
struct TYPE_23__ {TYPE_3__ para_num; TYPE_2__ fmt; TYPE_1__* eop_run; } ;
struct TYPE_22__ {scalar_t__ cx; } ;
struct TYPE_19__ {int /*<<< orphan*/ * style; } ;
struct TYPE_18__ {char const* szData; int nLen; } ;
typedef  TYPE_4__ SIZE ;
typedef  int /*<<< orphan*/  ME_Style ;
typedef  TYPE_5__ ME_Paragraph ;
typedef  TYPE_6__ ME_Context ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  TYPE_7__ CHARFORMAT2W ;

/* Variables and functions */
 int CFM_CHARSET ; 
 int CFM_FACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*) ; 
 TYPE_10__* FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PFN_BULLET ; 
 int /*<<< orphan*/  SYMBOL_CHARSET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 TYPE_10__* FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 

void FUNC9( ME_Context *c, ME_Paragraph *para )
{
    ME_Style *style;
    CHARFORMAT2W cf;
    static const WCHAR bullet_font[] = {'S','y','m','b','o','l',0};
    static const WCHAR bullet_str[] = {0xb7, 0};
    static const WCHAR spaceW[] = {' ', 0};
    HFONT old_font;
    SIZE sz;

    if (para->para_num.style && para->para_num.text) return;

    if (!para->para_num.style)
    {
        style = para->eop_run->style;

        if (para->fmt.wNumbering == PFN_BULLET)
        {
            cf.cbSize = sizeof(cf);
            cf.dwMask = CFM_FACE | CFM_CHARSET;
            FUNC6( cf.szFaceName, bullet_font, sizeof(bullet_font) );
            cf.bCharSet = SYMBOL_CHARSET;
            style = FUNC2( c->editor, style, &cf );
        }
        else
        {
            FUNC1( style );
        }

        para->para_num.style = style;
    }

    if (!para->para_num.text)
    {
        if (para->fmt.wNumbering != PFN_BULLET)
            para->para_num.text = FUNC8( para, FUNC7( para ) );
        else
            para->para_num.text = FUNC3( bullet_str, 1 );
    }

    old_font = FUNC4( c, para->para_num.style );
    FUNC0( c->hDC, para->para_num.text->szData, para->para_num.text->nLen, &sz );
    para->para_num.width = sz.cx;
    FUNC0( c->hDC, spaceW, 1, &sz );
    para->para_num.width += sz.cx;
    FUNC5( c, para->para_num.style, old_font );
}