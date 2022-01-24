#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {TYPE_3__* table; int /*<<< orphan*/  row_count; int /*<<< orphan*/  translation; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_dimensions ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ MSIDISTINCTVIEW ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC2( struct tagMSIVIEW *view, UINT *rows, UINT *cols )
{
    MSIDISTINCTVIEW *dv = (MSIDISTINCTVIEW*)view;

    FUNC0("%p %p %p\n", dv, rows, cols );

    if( !dv->table )
        return ERROR_FUNCTION_FAILED;

    if( rows )
    {
        if( !dv->translation )
            return ERROR_FUNCTION_FAILED;
        *rows = dv->row_count;
    }

    return dv->table->ops->get_dimensions( dv->table, NULL, cols );
}