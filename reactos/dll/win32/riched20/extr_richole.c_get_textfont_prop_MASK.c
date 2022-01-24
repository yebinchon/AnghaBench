#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  textfont_prop_val ;
typedef  enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;
struct TYPE_3__ {int /*<<< orphan*/  range; int /*<<< orphan*/ * props; scalar_t__ get_cache_enabled; } ;
typedef  scalar_t__ LONG ;
typedef  TYPE_1__ ITextFontImpl ;
typedef  int /*<<< orphan*/  IRichEditOleImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CO_E_RELEASED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(const ITextFontImpl *font, enum textfont_prop_id propid, textfont_prop_val *value)
{
    const IRichEditOleImpl *reole;
    textfont_prop_val v;
    LONG start, end, i;
    HRESULT hr;

    /* when font is not attached to any range use cached values */
    if (!font->range || font->get_cache_enabled) {
        *value = font->props[propid];
        return S_OK;
    }

    if (!(reole = FUNC3(font->range)))
        return CO_E_RELEASED;

    FUNC5(propid, value);

    FUNC2(font->range, &start);
    FUNC1(font->range, &end);

    /* iterate trough a range to see if property value is consistent */
    hr = FUNC4(reole, start, propid, &v);
    if (FUNC0(hr))
        return hr;

    for (i = start + 1; i < end; i++) {
        textfont_prop_val cur;

        hr = FUNC4(reole, i, propid, &cur);
        if (FUNC0(hr))
            return hr;

        if (!FUNC6(propid, &v, &cur))
            return S_OK;
    }

    *value = v;
    return S_OK;
}