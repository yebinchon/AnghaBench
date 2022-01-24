#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  (* charGlyphPropProc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {size_t eScript; } ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_GLYPHPROP ;
typedef  int /*<<< orphan*/  SCRIPT_CHARPROP ;
typedef  TYPE_1__ SCRIPT_ANALYSIS ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* ShapingData ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, const WCHAR* pwcChars, const INT cChars, const WORD* pwGlyphs, const INT cGlyphs, WORD *pwLogClust, SCRIPT_CHARPROP *pCharProp, SCRIPT_GLYPHPROP *pGlyphProp)
{
    FUNC1(hdc, psc);

    if (ShapingData[psa->eScript].charGlyphPropProc)
        ShapingData[psa->eScript].charGlyphPropProc(hdc, psc, psa, pwcChars, cChars, pwGlyphs, cGlyphs, pwLogClust, pCharProp, pGlyphProp);
    else
        FUNC0(psc, psa, pwcChars, cChars, pwGlyphs, cGlyphs, pwLogClust, pCharProp, pGlyphProp);
}