#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {TYPE_3__* table; } ;
struct TYPE_6__ {scalar_t__ (* execute ) (TYPE_3__*,int /*<<< orphan*/ *) ;scalar_t__ (* drop ) (TYPE_3__*) ;} ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_2__ MSIDROPVIEW ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static UINT FUNC3(struct tagMSIVIEW *view, MSIRECORD *record)
{
    MSIDROPVIEW *dv = (MSIDROPVIEW*)view;
    UINT r;

    FUNC0("%p %p\n", dv, record);

    if( !dv->table )
         return ERROR_FUNCTION_FAILED;

    r = dv->table->ops->execute(dv->table, record);
    if (r != ERROR_SUCCESS)
        return r;

    return dv->table->ops->drop(dv->table);
}