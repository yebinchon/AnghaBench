#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  tabledata; TYPE_1__* curview; TYPE_2__* curtable; int /*<<< orphan*/  merge; int /*<<< orphan*/  db; } ;
struct TYPE_14__ {int /*<<< orphan*/  entry; } ;
struct TYPE_13__ {int /*<<< orphan*/  hdr; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIQUERY ;
typedef  TYPE_2__ MERGETABLE ;
typedef  TYPE_3__ MERGEDATA ;
typedef  TYPE_3__* LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  merge_diff_row ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC10(MSIRECORD *rec, LPVOID param)
{
    MERGEDATA *data = param;
    MERGETABLE *table;
    MSIQUERY *dbview = NULL;
    MSIQUERY *mergeview = NULL;
    LPCWSTR name;
    UINT r;

    static const WCHAR query[] = {'S','E','L','E','C','T',' ','*',' ',
        'F','R','O','M',' ','`','%','s','`',0};

    name = FUNC2(rec, 1);

    r = FUNC1(data->merge, &mergeview, query, name);
    if (r != ERROR_SUCCESS)
        goto done;

    if (FUNC3(data->db, name))
    {
        r = FUNC1(data->db, &dbview, query, name);
        if (r != ERROR_SUCCESS)
            goto done;

        r = FUNC6(dbview, mergeview);
        if (r != ERROR_SUCCESS)
            goto done;

        r = FUNC7(data->db, data->merge, name);
        if (r != ERROR_SUCCESS)
            goto done;
    }

    r = FUNC8(data->merge, name, &table);
    if (r != ERROR_SUCCESS)
        goto done;

    data->curtable = table;
    data->curview = mergeview;
    r = FUNC0(mergeview, NULL, merge_diff_row, data);
    if (r != ERROR_SUCCESS)
    {
        FUNC4(table);
        goto done;
    }

    FUNC5(data->tabledata, &table->entry);

done:
    FUNC9(&dbview->hdr);
    FUNC9(&mergeview->hdr);
    return r;
}