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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  char const* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static LPWSTR FUNC4(LPCWSTR action, LPCWSTR actiondata,
                                      LPCWSTR usersid, LPCWSTR prodcode)
{
    LPWSTR deferred;
    DWORD len;

    static const WCHAR format[] = {
            '[','%','s','<','=','>','%','s','<','=','>','%','s',']','%','s',0
    };

    if (!actiondata)
        return FUNC3(action);

    len = FUNC0(action) + FUNC0(actiondata) +
          FUNC0(usersid) + FUNC0(prodcode) +
          FUNC0(format) - 7;
    deferred = FUNC1(len * sizeof(WCHAR));

    FUNC2(deferred, format, actiondata, usersid, prodcode, action);
    return deferred;
}