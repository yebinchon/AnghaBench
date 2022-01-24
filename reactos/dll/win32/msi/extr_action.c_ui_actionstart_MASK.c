#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  db; } ;
struct TYPE_10__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  INSTALLMESSAGE_ACTIONSTART ; 
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static INT FUNC6(MSIPACKAGE *package, LPCWSTR action, LPCWSTR description, LPCWSTR template)
{
    WCHAR query[] = {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','A','c','t','i','o','n','T','e','x','t','`',' ','W','H','E','R','E',' ',
        '`','A','c','t','i','o','n','`',' ','=',' ','\'','%','s','\'',0};
    MSIRECORD *row, *textrow;
    INT rc;

    textrow = FUNC2(package->db, query, action);
    if (textrow)
    {
        description = FUNC3(textrow, 2);
        template = FUNC3(textrow, 3);
    }

    row = FUNC0(3);
    if (!row) return -1;
    FUNC4(row, 1, action);
    FUNC4(row, 2, description);
    FUNC4(row, 3, template);
    rc = FUNC1(package, INSTALLMESSAGE_ACTIONSTART, row);
    if (textrow) FUNC5(&textrow->hdr);
    FUNC5(&row->hdr);
    return rc;
}