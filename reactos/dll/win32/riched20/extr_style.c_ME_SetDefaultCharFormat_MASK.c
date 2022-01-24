#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int cbSize; } ;
struct TYPE_15__ {int /*<<< orphan*/  script_cache; int /*<<< orphan*/ * font_cache; int /*<<< orphan*/  tm; int /*<<< orphan*/  fmt; } ;
struct TYPE_14__ {TYPE_1__* pBuffer; } ;
struct TYPE_13__ {TYPE_3__* pDefaultStyle; } ;
typedef  TYPE_2__ ME_TextEditor ;
typedef  TYPE_3__ ME_Style ;
typedef  TYPE_4__ CHARFORMAT2W ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(ME_TextEditor *editor, CHARFORMAT2W *mod)
{
    ME_Style *style, *def = editor->pBuffer->pDefaultStyle;

    FUNC4(mod->cbSize == sizeof(CHARFORMAT2W));
    style = FUNC0(editor, def, mod);
    def->fmt = style->fmt;
    def->tm = style->tm;
    if (def->font_cache)
    {
        FUNC5( def->font_cache );
        def->font_cache = NULL;
    }
    FUNC3( &def->script_cache );
    FUNC2( style );
    FUNC1( editor );
}