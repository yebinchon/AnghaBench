#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_7__ {scalar_t__ num_rows; int /*<<< orphan*/ * db; TYPE_1__ view; } ;
typedef  int /*<<< orphan*/  MSIVIEW ;
typedef  TYPE_2__ MSISTORAGESVIEW ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  storages_ops ; 

UINT FUNC4(MSIDATABASE *db, MSIVIEW **view)
{
    MSISTORAGESVIEW *sv;
    INT rows;

    FUNC0("(%p, %p)\n", db, view);

    sv = FUNC2( sizeof(MSISTORAGESVIEW) );
    if (!sv)
        return ERROR_FUNCTION_FAILED;

    sv->view.ops = &storages_ops;
    sv->db = db;

    rows = FUNC1(sv);
    if (rows < 0)
    {
        FUNC3( sv );
        return ERROR_FUNCTION_FAILED;
    }
    sv->num_rows = rows;

    *view = (MSIVIEW *)sv;

    return ERROR_SUCCESS;
}