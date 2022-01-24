#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  size_t UINT ;
struct TYPE_6__ {scalar_t__ ref_count; size_t col_count; int /*<<< orphan*/  entry; int /*<<< orphan*/  row_count; TYPE_1__* colinfo; } ;
struct TYPE_5__ {TYPE_3__* table; } ;
struct TYPE_4__ {int type; scalar_t__ ref_count; int /*<<< orphan*/  number; int /*<<< orphan*/  tablename; } ;
typedef  TYPE_2__ MSITABLEVIEW ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 size_t ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int MSITYPE_TEMPORARY ; 
 int /*<<< orphan*/  FUNC1 (struct tagMSIVIEW*) ; 
 size_t FUNC2 (struct tagMSIVIEW*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct tagMSIVIEW*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC6(struct tagMSIVIEW *view)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    INT ref = tv->table->ref_count;
    UINT i, r;

    FUNC3("%p %d\n", view, ref);

    for (i = 0; i < tv->table->col_count; i++)
    {
        if (tv->table->colinfo[i].type & MSITYPE_TEMPORARY)
        {
            ref = FUNC0(&tv->table->colinfo[i].ref_count);
            if (ref == 0)
            {
                r = FUNC2(view, tv->table->colinfo[i].tablename,
                                        tv->table->colinfo[i].number);
                if (r != ERROR_SUCCESS)
                    break;
            }
        }
    }

    ref = FUNC0(&tv->table->ref_count);
    if (ref == 0)
    {
        if (!tv->table->row_count)
        {
            FUNC5(&tv->table->entry);
            FUNC4(tv->table);
            FUNC1(view);
        }
    }

    return ref;
}