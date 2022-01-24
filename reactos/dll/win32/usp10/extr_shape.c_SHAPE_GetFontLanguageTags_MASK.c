#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ userLang; } ;
typedef  TYPE_1__ ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  int OPENTYPE_TAG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int,int*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

HRESULT FUNC5( HDC hdc, ScriptCache *psc,
                                   SCRIPT_ANALYSIS *psa, OPENTYPE_TAG tagScript,
                                   int cMaxTags, OPENTYPE_TAG *pLangSysTags,
                                   int *pcTags)
{
    HRESULT hr;
    OPENTYPE_TAG searching = 0x00000000;
    BOOL fellback = FALSE;

    FUNC4(hdc, psc);

    if (psa && psc->userLang != 0)
        searching = psc->userLang;

    hr = FUNC2(psc, tagScript, searching, cMaxTags, pLangSysTags, pcTags);
    if (FUNC0(hr))
    {
        fellback = TRUE;
        hr = FUNC2(psc, FUNC1('l','a','t','n'), searching, cMaxTags, pLangSysTags, pcTags);
    }

    if (FUNC0(hr) || fellback)
        *pcTags = 0;
    if (FUNC3(hr) && fellback && psa)
        hr = E_INVALIDARG;
    return hr;
}