#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  record; } ;
struct TYPE_7__ {int len; } ;
typedef  TYPE_1__ FORMSTR ;
typedef  TYPE_2__ FORMAT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,scalar_t__*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

__attribute__((used)) static WCHAR *FUNC7( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *val, *ret;
    DWORD len;
    int field;

    if (!(val = FUNC5( (str->len + 1) * sizeof(WCHAR) ))) return NULL;
    FUNC4(val, FUNC3(format, str), str->len + 1);
    field = FUNC2( val );
    FUNC6( val );

    if (FUNC1( format->record, field ) ||
        FUNC0( format->record, field, NULL, &len )) return NULL;

    len++;
    if (!(ret = FUNC5( len * sizeof(WCHAR) ))) return NULL;
    ret[0] = 0;
    if (FUNC0( format->record, field, ret, &len ))
    {
        FUNC6( ret );
        return NULL;
    }
    *ret_len = len;
    return ret;
}