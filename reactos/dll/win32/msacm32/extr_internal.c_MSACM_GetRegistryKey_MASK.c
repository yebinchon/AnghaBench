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
struct TYPE_3__ {char const* pszDriverAlias; } ;
typedef  TYPE_1__ WINE_ACMDRIVERID ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MSACM_hHeap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static	LPWSTR	FUNC5(const WINE_ACMDRIVERID* padid)
{
    static const WCHAR	baseKey[] = {'S','o','f','t','w','a','r','e','\\','M','i','c','r','o','s','o','f','t','\\',
                                     'A','u','d','i','o','C','o','m','p','r','e','s','s','i','o','n','M','a','n','a','g','e','r','\\',
                                     'D','r','i','v','e','r','C','a','c','h','e','\\','\0'};
    LPWSTR	ret;
    int		len;

    if (!padid->pszDriverAlias) {
	FUNC1("No alias needed for registry entry\n");
	return NULL;
    }
    len = FUNC4(baseKey);
    ret = FUNC2(MSACM_hHeap, 0, (len + FUNC4(padid->pszDriverAlias) + 1) * sizeof(WCHAR));
    if (!ret) return NULL;

    FUNC3(ret, baseKey);
    FUNC3(ret + len, padid->pszDriverAlias);
    FUNC0(ret + len);
    return ret;
}