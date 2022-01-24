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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* style_tbl ; 

__attribute__((used)) static HRESULT FUNC5(nsIDOMCSSStyleDeclaration *nsstyle, styleid_t sid, nsAString *value)
{
    nsAString str_name;
    nsresult nsres;

    FUNC3(&str_name, style_tbl[sid].name);

    nsres = FUNC4(nsstyle, &str_name, value);
    if(FUNC1(nsres)) {
        FUNC0("SetProperty failed: %08x\n", nsres);
        return E_FAIL;
    }

    FUNC2(&str_name);

    return NS_OK;
}