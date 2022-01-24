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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char const* styleNone ; 

__attribute__((used)) static BOOL FUNC3(BSTR v)
{
    static const WCHAR styleDotted[] = {'d','o','t','t','e','d',0};
    static const WCHAR styleDashed[] = {'d','a','s','h','e','d',0};
    static const WCHAR styleSolid[]  = {'s','o','l','i','d',0};
    static const WCHAR styleDouble[] = {'d','o','u','b','l','e',0};
    static const WCHAR styleGroove[] = {'g','r','o','o','v','e',0};
    static const WCHAR styleRidge[]  = {'r','i','d','g','e',0};
    static const WCHAR styleInset[]  = {'i','n','s','e','t',0};
    static const WCHAR styleOutset[] = {'o','u','t','s','e','t',0};

    FUNC0("%s\n", FUNC1(v));

    if(!v || FUNC2(v, styleNone)   == 0 || FUNC2(v, styleDotted) == 0 ||
             FUNC2(v, styleDashed) == 0 || FUNC2(v, styleSolid)  == 0 ||
             FUNC2(v, styleDouble) == 0 || FUNC2(v, styleGroove) == 0 ||
             FUNC2(v, styleRidge)  == 0 || FUNC2(v, styleInset)  == 0 ||
             FUNC2(v, styleOutset) == 0 )
    {
        return TRUE;
    }

    return FALSE;
}