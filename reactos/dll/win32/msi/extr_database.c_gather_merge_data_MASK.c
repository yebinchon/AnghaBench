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
struct list {int dummy; } ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {struct list* tabledata; int /*<<< orphan*/ * merge; int /*<<< orphan*/ * db; } ;
struct TYPE_6__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIQUERY ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  TYPE_2__ MERGEDATA ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_1__**) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  merge_diff_tables ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC3(MSIDATABASE *db, MSIDATABASE *merge,
                              struct list *tabledata)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','_','T','a','b','l','e','s','`',0};
    MSIQUERY *view;
    MERGEDATA data;
    UINT r;

    r = FUNC0(merge, query, &view);
    if (r != ERROR_SUCCESS)
        return r;

    data.db = db;
    data.merge = merge;
    data.tabledata = tabledata;
    r = FUNC1(view, NULL, merge_diff_tables, &data);
    FUNC2(&view->hdr);
    return r;
}