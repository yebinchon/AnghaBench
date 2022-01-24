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
typedef  char PRUnichar ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC4(nsIDOMHTMLElement *elem, CLSID *clsid)
{
    const PRUnichar *val;
    nsAString val_str;
    nsresult nsres;
    BOOL ret = FALSE;

    static const PRUnichar classidW[] = {'c','l','a','s','s','i','d',0};

    nsres = FUNC1(elem, classidW, &val_str, &val);
    if(FUNC0(nsres)) {
        if(*val)
            ret = FUNC3(val, clsid);
        FUNC2(&val_str);
    }

    return ret;
}