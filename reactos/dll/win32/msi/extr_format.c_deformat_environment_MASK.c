#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int len; } ;
typedef  TYPE_1__ FORMSTR ;
typedef  int /*<<< orphan*/  FORMAT ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static WCHAR *FUNC5( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *key, *ret = NULL;
    DWORD len;

    if (!(key = FUNC3((str->len + 1) * sizeof(WCHAR)))) return NULL;
    FUNC2(key, FUNC1(format, str), str->len + 1);

    if ((len = FUNC0( key, NULL, 0 )))
    {
        len++;
        if ((ret = FUNC3( len * sizeof(WCHAR) )))
            *ret_len = FUNC0( key, ret, len );
    }
    FUNC4( key );
    return ret;
}