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
typedef  int /*<<< orphan*/  vbscode_t ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static WCHAR *FUNC3(vbscode_t *vbscode, const WCHAR *str)
{
    size_t size;
    WCHAR *ret;

    size = (FUNC2(str)+1)*sizeof(WCHAR);
    ret = FUNC0(vbscode, size);
    if(ret)
        FUNC1(ret, str, size);
    return ret;
}