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
typedef  int /*<<< orphan*/  xmlreaderinput ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline WCHAR *FUNC3(xmlreaderinput *input, const WCHAR *str)
{
    LPWSTR ret = NULL;

    if(str) {
        DWORD size;

        size = (FUNC2(str)+1)*sizeof(WCHAR);
        ret = FUNC1(input, size);
        if (ret) FUNC0(ret, str, size);
    }

    return ret;
}