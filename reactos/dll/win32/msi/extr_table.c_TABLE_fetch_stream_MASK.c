#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
struct TYPE_4__ {int /*<<< orphan*/  fetch_int; } ;
typedef  TYPE_2__ MSITABLEVIEW ;
typedef  int /*<<< orphan*/  IStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static UINT FUNC5( struct tagMSIVIEW *view, UINT row, UINT col, IStream **stm )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT r;
    WCHAR *name;

    if( !view->ops->fetch_int )
        return ERROR_INVALID_PARAMETER;

    r = FUNC2( tv, row, &name );
    if (r != ERROR_SUCCESS)
    {
        FUNC0("fetching stream, error = %u\n", r);
        return r;
    }

    r = FUNC4( tv->db, name, stm );
    if (r != ERROR_SUCCESS)
        FUNC0("fetching stream %s, error = %u\n", FUNC1(name), r);

    FUNC3( name );
    return r;
}