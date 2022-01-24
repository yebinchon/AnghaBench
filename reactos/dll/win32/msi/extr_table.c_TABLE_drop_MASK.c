#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {size_t col_count; int /*<<< orphan*/  entry; TYPE_1__* colinfo; } ;
struct TYPE_18__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_17__ {TYPE_9__* table; int /*<<< orphan*/  db; int /*<<< orphan*/  name; } ;
struct TYPE_16__ {TYPE_2__* ops; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* delete ) (TYPE_3__*) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  number; int /*<<< orphan*/  tablename; } ;
typedef  TYPE_3__ MSIVIEW ;
typedef  TYPE_4__ MSITABLEVIEW ;
typedef  TYPE_5__ MSIRECORD ;
typedef  size_t INT ;

/* Variables and functions */
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 TYPE_5__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct tagMSIVIEW*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_4__*,TYPE_5__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  szTables ; 

__attribute__((used)) static UINT FUNC12(struct tagMSIVIEW *view)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    MSIVIEW *tables = NULL;
    MSIRECORD *rec = NULL;
    UINT r, row;
    INT i;

    FUNC5("dropping table %s\n", FUNC6(tv->name));

    for (i = tv->table->col_count - 1; i >= 0; i--)
    {
        r = FUNC4(view, tv->table->colinfo[i].tablename,
                                tv->table->colinfo[i].number);
        if (r != ERROR_SUCCESS)
            return r;
    }

    rec = FUNC0(1);
    if (!rec)
        return ERROR_OUTOFMEMORY;

    FUNC1(rec, 1, tv->name);

    r = FUNC2(tv->db, szTables, &tables);
    if (r != ERROR_SUCCESS)
    {
        FUNC10(&rec->hdr);
        return r;
    }

    r = FUNC9((MSITABLEVIEW *)tables, rec, &row, NULL);
    if (r != ERROR_SUCCESS)
        goto done;

    r = FUNC3(tables, row);
    if (r != ERROR_SUCCESS)
        goto done;

    FUNC8(&tv->table->entry);
    FUNC7(tv->table);

done:
    FUNC10(&rec->hdr);
    tables->ops->delete(tables);

    return r;
}