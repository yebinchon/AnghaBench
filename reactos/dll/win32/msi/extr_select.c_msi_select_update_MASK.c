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
struct TYPE_16__ {TYPE_1__* ops; } ;
struct TYPE_15__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_14__ {scalar_t__* cols; TYPE_4__* table; } ;
struct TYPE_13__ {scalar_t__ (* get_row ) (TYPE_4__*,scalar_t__,TYPE_3__**) ;scalar_t__ (* modify ) (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,scalar_t__) ;} ;
typedef  TYPE_2__ MSISELECTVIEW ;
typedef  TYPE_3__ MSIRECORD ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIMODIFY_UPDATE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ MSITYPE_STRING ; 
 scalar_t__ FUNC2 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct tagMSIVIEW*,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tagMSIVIEW*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__,int*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_4__*,scalar_t__,TYPE_3__**) ; 
 scalar_t__ FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static UINT FUNC11(struct tagMSIVIEW *view, MSIRECORD *rec, UINT row)
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;
    UINT r, i, num_columns, col, type, val;
    LPCWSTR str;
    MSIRECORD *mod;

    r = FUNC5(view, NULL, &num_columns);
    if (r != ERROR_SUCCESS)
        return r;

    r = sv->table->ops->get_row(sv->table, row - 1, &mod);
    if (r != ERROR_SUCCESS)
        return r;

    for (i = 0; i < num_columns; i++)
    {
        col = sv->cols[i];

        r = FUNC4(view, i + 1, NULL, &type, NULL, NULL);
        if (r != ERROR_SUCCESS)
        {
            FUNC0("Failed to get column information: %d\n", r);
            goto done;
        }

        if (FUNC1(type))
        {
            FUNC0("Cannot modify binary data!\n");
            r = ERROR_FUNCTION_FAILED;
            goto done;
        }
        else if (type & MSITYPE_STRING)
        {
            int len;
            str = FUNC6( rec, i + 1, &len );
            r = FUNC7( mod, col, str, len );
        }
        else
        {
            val = FUNC2(rec, i + 1);
            r = FUNC3(mod, col, val);
        }

        if (r != ERROR_SUCCESS)
        {
            FUNC0("Failed to modify record: %d\n", r);
            goto done;
        }
    }

    r = sv->table->ops->modify(sv->table, MSIMODIFY_UPDATE, mod, row);

done:
    FUNC8(&mod->hdr);
    return r;
}