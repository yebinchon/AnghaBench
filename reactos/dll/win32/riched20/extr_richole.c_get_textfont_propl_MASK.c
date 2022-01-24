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
struct TYPE_3__ {int /*<<< orphan*/  l; } ;
typedef  TYPE_1__ textfont_prop_val ;
typedef  enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  ITextFontImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC1(const ITextFontImpl *font, enum textfont_prop_id propid, LONG *value)
{
    textfont_prop_val v;
    HRESULT hr;

    if (!value)
        return E_INVALIDARG;

    hr = FUNC0(font, propid, &v);
    *value = v.l;
    return hr;
}