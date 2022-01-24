#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_12__ {scalar_t__ col_count; TYPE_1__* colinfo; } ;
struct TYPE_11__ {int /*<<< orphan*/  db; int /*<<< orphan*/  view; } ;
struct TYPE_10__ {int /*<<< orphan*/  ref_count; int /*<<< orphan*/  colname; } ;
typedef  TYPE_2__ MSITABLEVIEW ;
typedef  TYPE_3__ MSITABLE ;
typedef  TYPE_4__ MSIRECORD ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC9(struct tagMSIVIEW *view, LPCWSTR table, UINT number,
                             LPCWSTR column, UINT type, BOOL hold)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    MSITABLE *msitable;
    MSIRECORD *rec;
    UINT r, i;

    rec = FUNC1(4);
    if (!rec)
        return ERROR_OUTOFMEMORY;

    FUNC3(rec, 1, table);
    FUNC2(rec, 2, number);
    FUNC3(rec, 3, column);
    FUNC2(rec, 4, type);

    r = FUNC4(&tv->view, rec, -1, FALSE);
    if (r != ERROR_SUCCESS)
        goto done;

    FUNC6(tv->db, table);

    if (!hold)
        goto done;

    msitable = FUNC5(tv->db, table);
    for (i = 0; i < msitable->col_count; i++)
    {
        if (!FUNC8( msitable->colinfo[i].colname, column ))
        {
            FUNC0(&msitable->colinfo[i].ref_count);
            break;
        }
    }

done:
    FUNC7(&rec->hdr);
    return r;
}