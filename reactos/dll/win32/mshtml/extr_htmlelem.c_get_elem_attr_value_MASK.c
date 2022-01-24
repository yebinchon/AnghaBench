#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PRUnichar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

nsresult FUNC8(nsIDOMHTMLElement *nselem, const WCHAR *name, nsAString *val_str, const PRUnichar **val)
{
    nsAString name_str;
    nsresult nsres;

    FUNC6(&name_str, name);
    FUNC5(val_str, NULL);
    nsres = FUNC7(nselem, &name_str, val_str);
    FUNC3(&name_str);
    if(FUNC1(nsres)) {
        FUNC0("GetAttribute(%s) failed: %08x\n", FUNC2(name), nsres);
        FUNC3(val_str);
        return nsres;
    }

    FUNC4(val_str, val);
    return NS_OK;
}