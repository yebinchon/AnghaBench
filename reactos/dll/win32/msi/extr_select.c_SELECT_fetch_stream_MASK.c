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
typedef  int UINT ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int num_cols; int* cols; TYPE_3__* table; } ;
struct TYPE_5__ {int (* fetch_stream ) (TYPE_3__*,int,int,int /*<<< orphan*/ **) ;} ;
typedef  TYPE_2__ MSISELECTVIEW ;
typedef  int /*<<< orphan*/  IStream ;

/* Variables and functions */
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int,int,int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_3__*,int,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static UINT FUNC2( struct tagMSIVIEW *view, UINT row, UINT col, IStream **stm)
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;

    FUNC0("%p %d %d %p\n", sv, row, col, stm );

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    if( !col || col > sv->num_cols )
         return ERROR_FUNCTION_FAILED;

    col = sv->cols[ col - 1 ];
    if( !col )
    {
        *stm = NULL;
        return ERROR_SUCCESS;
    }
    return sv->table->ops->fetch_stream( sv->table, row, col, stm );
}