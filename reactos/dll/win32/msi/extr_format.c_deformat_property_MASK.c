#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {TYPE_1__* package; } ;
struct TYPE_9__ {int len; } ;
struct TYPE_8__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ FORMSTR ;
typedef  TYPE_3__ FORMAT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static WCHAR *FUNC5( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *prop, *ret;
    DWORD len = 0;
    UINT r;

    if (!(prop = FUNC2( (str->len + 1) * sizeof(WCHAR) ))) return NULL;
    FUNC1( prop, FUNC0(format, str), str->len + 1 );

    r = FUNC4( format->package->db, prop, NULL, &len );
    if (r != ERROR_SUCCESS && r != ERROR_MORE_DATA)
    {
        FUNC3( prop );
        return NULL;
    }
    len++;
    if ((ret = FUNC2( len * sizeof(WCHAR) )))
        FUNC4( format->package->db, prop, ret, &len );
    FUNC3( prop );
    *ret_len = len;
    return ret;
}