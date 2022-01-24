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
typedef  int /*<<< orphan*/  nsIDOMCSSStyleDeclaration ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* style_tbl ; 

HRESULT FUNC7(nsIDOMCSSStyleDeclaration *nsstyle, styleid_t sid, BSTR *p, DWORD flags)
{
    nsAString str_value;
    const PRUnichar *value;
    HRESULT hres;

    FUNC5(&str_value, NULL);

    FUNC2(nsstyle, sid, &str_value);

    FUNC4(&str_value, &value);
    hres = FUNC6(value, flags, p);
    FUNC3(&str_value);

    FUNC0("%s -> %s\n", FUNC1(style_tbl[sid].name), FUNC1(*p));
    return hres;
}