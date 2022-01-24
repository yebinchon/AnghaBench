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
struct TYPE_6__ {TYPE_3__* table; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* modify ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ MSISELECTVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  MSIMODIFY ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  MSIMODIFY_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tagMSIVIEW*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC3( struct tagMSIVIEW *view, MSIMODIFY eModifyMode,
                           MSIRECORD *rec, UINT row )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;

    FUNC0("%p %d %p %d\n", sv, eModifyMode, rec, row );

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    if (eModifyMode == MSIMODIFY_UPDATE)
        return FUNC1(view, rec, row);

    return sv->table->ops->modify( sv->table, eModifyMode, rec, row );
}