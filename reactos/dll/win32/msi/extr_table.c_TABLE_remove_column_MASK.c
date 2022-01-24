#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_15__ {int /*<<< orphan*/  db; } ;
struct TYPE_14__ {TYPE_1__* ops; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* delete ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ MSIVIEW ;
typedef  TYPE_3__ MSITABLEVIEW ;
typedef  TYPE_4__ MSIRECORD ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 TYPE_4__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_4__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  szColumns ; 

__attribute__((used)) static UINT FUNC9(struct tagMSIVIEW *view, LPCWSTR table, UINT number)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    MSIRECORD *rec = NULL;
    MSIVIEW *columns = NULL;
    UINT row, r;

    rec = FUNC0(2);
    if (!rec)
        return ERROR_OUTOFMEMORY;

    FUNC2(rec, 1, table);
    FUNC1(rec, 2, number);

    r = FUNC3(tv->db, szColumns, &columns);
    if (r != ERROR_SUCCESS)
    {
        FUNC7(&rec->hdr);
        return r;
    }

    r = FUNC5((MSITABLEVIEW *)columns, rec, &row, NULL);
    if (r != ERROR_SUCCESS)
        goto done;

    r = FUNC4(columns, row);
    if (r != ERROR_SUCCESS)
        goto done;

    FUNC6(tv->db, table);

done:
    FUNC7(&rec->hdr);
    columns->ops->delete(columns);
    return r;
}