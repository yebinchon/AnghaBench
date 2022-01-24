#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_26__ {int /*<<< orphan*/  db; int /*<<< orphan*/  curview; int /*<<< orphan*/  merge; TYPE_3__* curtable; } ;
struct TYPE_25__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  data; } ;
struct TYPE_24__ {int /*<<< orphan*/  rows; int /*<<< orphan*/  numconflicts; int /*<<< orphan*/  name; } ;
struct TYPE_23__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_22__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  TYPE_3__ MERGETABLE ;
typedef  TYPE_4__ MERGEROW ;
typedef  TYPE_5__ MERGEDATA ;
typedef  TYPE_4__* LPWSTR ;
typedef  TYPE_5__* LPVOID ;

/* Variables and functions */
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC11(MSIRECORD *rec, LPVOID param)
{
    MERGEDATA *data = param;
    MERGETABLE *table = data->curtable;
    MERGEROW *mergerow;
    MSIQUERY *dbview = NULL;
    MSIRECORD *row = NULL;
    LPWSTR query = NULL;
    UINT r = ERROR_SUCCESS;

    if (FUNC5(data->db, table->name))
    {
        query = FUNC6(data->merge, data->curview, table->name, rec);
        if (!query)
            return ERROR_OUTOFMEMORY;

        r = FUNC1(data->db, query, &dbview);
        if (r != ERROR_SUCCESS)
            goto done;

        r = FUNC3(dbview, NULL);
        if (r != ERROR_SUCCESS)
            goto done;

        r = FUNC4(dbview, &row);
        if (r == ERROR_SUCCESS && !FUNC2(rec, row))
        {
            table->numconflicts++;
            goto done;
        }
        else if (r != ERROR_NO_MORE_ITEMS)
            goto done;

        r = ERROR_SUCCESS;
    }

    mergerow = FUNC8(sizeof(MERGEROW));
    if (!mergerow)
    {
        r = ERROR_OUTOFMEMORY;
        goto done;
    }

    mergerow->data = FUNC0(rec);
    if (!mergerow->data)
    {
        r = ERROR_OUTOFMEMORY;
        FUNC9(mergerow);
        goto done;
    }

    FUNC7(&table->rows, &mergerow->entry);

done:
    FUNC9(query);
    FUNC10(&row->hdr);
    FUNC10(&dbview->hdr);
    return r;
}