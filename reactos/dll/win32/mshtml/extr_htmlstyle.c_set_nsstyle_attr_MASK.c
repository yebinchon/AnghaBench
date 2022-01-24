#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t styleid_t ;
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMCSSStyleDeclaration ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  const* name; } ;
typedef  int /*<<< orphan*/  const* LPWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int ATTR_FIX_PX ; 
 int ATTR_FIX_URL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  const* emptyW ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* style_tbl ; 

HRESULT FUNC8(nsIDOMCSSStyleDeclaration *nsstyle, styleid_t sid, const WCHAR *value, DWORD flags)
{
    nsAString str_name, str_value, str_empty;
    LPWSTR val = NULL;
    nsresult nsres;

    if(value) {
        if(flags & ATTR_FIX_PX)
            val = FUNC2(value);
        else if(flags & ATTR_FIX_URL)
            val = FUNC3(value);
    }

    FUNC6(&str_name, style_tbl[sid].name);
    FUNC6(&str_value, val ? val : value);
    FUNC6(&str_empty, emptyW);

    nsres = FUNC7(nsstyle, &str_name, &str_value, &str_empty);
    if(FUNC1(nsres))
        FUNC0("SetProperty failed: %08x\n", nsres);

    FUNC5(&str_name);
    FUNC5(&str_value);
    FUNC5(&str_empty);
    FUNC4(val);

    return S_OK;
}