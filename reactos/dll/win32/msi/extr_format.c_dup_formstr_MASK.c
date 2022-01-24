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
typedef  scalar_t__ WCHAR ;
struct TYPE_4__ {int len; } ;
typedef  TYPE_1__ FORMSTR ;
typedef  int /*<<< orphan*/  FORMAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC2 (int) ; 

__attribute__((used)) static WCHAR *FUNC3( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *val;

    if (!str->len) return NULL;
    if ((val = FUNC2( (str->len + 1) * sizeof(WCHAR) )))
    {
        FUNC1( val, FUNC0(format, str), str->len * sizeof(WCHAR) );
        val[str->len] = 0;
        *ret_len = str->len;
    }
    return val;
}