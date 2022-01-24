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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  nsinput; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  TYPE_1__ HTMLInputElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,char const*) ; 

__attribute__((used)) static BOOL FUNC7(HTMLDOMNode *iface)
{
    HTMLInputElement *This = FUNC1(iface);
    const PRUnichar *type;
    nsAString nsstr;
    nsresult nsres;
    BOOL ret = FALSE;

    static const WCHAR buttonW[] = {'b','u','t','t','o','n',0};
    static const WCHAR hiddenW[] = {'h','i','d','d','e','n',0};
    static const WCHAR passwordW[] = {'p','a','s','s','w','o','r','d',0};
    static const WCHAR resetW[] = {'r','e','s','e','t',0};
    static const WCHAR submitW[] = {'s','u','b','m','i','t',0};
    static const WCHAR textW[] = {'t','e','x','t',0};

    FUNC4(&nsstr, NULL);
    nsres = FUNC5(This->nsinput, &nsstr);
    if(FUNC0(nsres)) {
        FUNC3(&nsstr, &type);
        ret = !FUNC6(type, buttonW) || !FUNC6(type, hiddenW) || !FUNC6(type, passwordW)
            || !FUNC6(type, resetW) || !FUNC6(type, submitW) || !FUNC6(type, textW);
    }
    FUNC2(&nsstr);
    return ret;
}