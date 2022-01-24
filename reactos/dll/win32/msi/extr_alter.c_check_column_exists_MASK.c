#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_2__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC4(MSIDATABASE *db, LPCWSTR table, LPCWSTR column)
{
    MSIQUERY *view;
    MSIRECORD *rec;
    UINT r;

    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','_','C','o','l','u','m','n','s','`',' ','W','H','E','R','E',' ',
        '`','T','a','b','l','e','`','=','\'','%','s','\'',' ','A','N','D',' ',
        '`','N','a','m','e','`','=','\'','%','s','\'',0
    };

    r = FUNC0(db, &view, query, table, column);
    if (r != ERROR_SUCCESS)
        return FALSE;

    r = FUNC1(view, NULL);
    if (r != ERROR_SUCCESS)
        goto done;

    r = FUNC2(view, &rec);
    if (r == ERROR_SUCCESS)
        FUNC3(&rec->hdr);

done:
    FUNC3(&view->hdr);
    return (r == ERROR_SUCCESS);
}