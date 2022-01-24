#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ numconflicts; int /*<<< orphan*/  name; int /*<<< orphan*/  rows; int /*<<< orphan*/  numtypes; int /*<<< orphan*/  types; int /*<<< orphan*/  numcolumns; int /*<<< orphan*/  columns; int /*<<< orphan*/  numlabels; int /*<<< orphan*/  labels; } ;
struct TYPE_9__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIQUERY ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  TYPE_2__ MERGETABLE ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC9 (MSIDATABASE *db, LPCWSTR name, MERGETABLE **ptable)
{
    UINT r;
    MERGETABLE *table;
    MSIQUERY *mergeview = NULL;

    static const WCHAR query[] = {'S','E','L','E','C','T',' ','*',' ',
        'F','R','O','M',' ','`','%','s','`',0};

    table = FUNC3(sizeof(MERGETABLE));
    if (!table)
    {
       *ptable = NULL;
       return ERROR_OUTOFMEMORY;
    }

    r = FUNC6(db, name, &table->labels, &table->numlabels);
    if (r != ERROR_SUCCESS)
        goto err;

    r = FUNC0(db, &mergeview, query, name);
    if (r != ERROR_SUCCESS)
        goto err;

    r = FUNC4(mergeview, &table->columns, &table->numcolumns);
    if (r != ERROR_SUCCESS)
        goto err;

    r = FUNC5(mergeview, &table->types, &table->numtypes);
    if (r != ERROR_SUCCESS)
        goto err;

    FUNC2(&table->rows);

    table->name = FUNC8(name);
    table->numconflicts = 0;

    FUNC7(&mergeview->hdr);
    *ptable = table;
    return ERROR_SUCCESS;

err:
    FUNC7(&mergeview->hdr);
    FUNC1(table);
    *ptable = NULL;
    return r;
}