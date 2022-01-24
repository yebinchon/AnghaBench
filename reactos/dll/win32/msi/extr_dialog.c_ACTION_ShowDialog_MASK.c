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
struct TYPE_10__ {int /*<<< orphan*/  db; } ;
struct TYPE_9__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  INSTALLMESSAGE_INFO ; 
 int /*<<< orphan*/  INSTALLMESSAGE_SHOWDIALOG ; 
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

INT FUNC6( MSIPACKAGE *package, const WCHAR *dialog )
{
    static const WCHAR szDialog[] = {'D','i','a','l','o','g',0};
    MSIRECORD *row;
    INT rc;

    if (!FUNC4(package->db, szDialog)) return 0;

    row = FUNC0(0);
    if (!row) return -1;
    FUNC3(row, 0, dialog);
    rc = FUNC1(package, INSTALLMESSAGE_SHOWDIALOG, row);
    FUNC5(&row->hdr);

    if (rc == -2) rc = 0;

    if (!rc)
    {
        MSIRECORD *row = FUNC0(2);
        if (!row) return -1;
        FUNC2(row, 1, 2726);
        FUNC3(row, 2, dialog);
        FUNC1(package, INSTALLMESSAGE_INFO, row);

        FUNC5(&row->hdr);
    }
    return rc;
}