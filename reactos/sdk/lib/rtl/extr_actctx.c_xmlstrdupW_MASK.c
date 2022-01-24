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
struct TYPE_3__ {int len; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ xmlstr_t ;
typedef  scalar_t__ WCHAR ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static WCHAR *FUNC3(const xmlstr_t* str)
{
    WCHAR *strW;

    if ((strW = FUNC0(FUNC1(), 0, (str->len + 1) * sizeof(WCHAR))))
    {
        FUNC2( strW, str->ptr, str->len * sizeof(WCHAR) );
        strW[str->len] = 0;
    }
    return strW;
}