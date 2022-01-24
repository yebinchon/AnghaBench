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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static inline WCHAR *FUNC3(const WCHAR *str)
{
    WCHAR *ret = NULL;

    if(str) {
        size_t size;

        size = (FUNC1(str)+1)*sizeof(WCHAR);
        ret = FUNC0(size);
        if(ret)
            FUNC2(ret, str, size);
    }

    return ret;
}