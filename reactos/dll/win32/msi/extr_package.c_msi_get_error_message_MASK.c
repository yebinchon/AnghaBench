#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 scalar_t__ IDS_ERROR_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  msi_hInstance ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

LPWSTR FUNC5(MSIDATABASE *db, int error)
{
    static const WCHAR query[] =
        {'S','E','L','E','C','T',' ','`','M','e','s','s','a','g','e','`',' ',
         'F','R','O','M',' ','`','E','r','r','o','r','`',' ','W','H','E','R','E',' ',
         '`','E','r','r','o','r','`',' ','=',' ','%','i',0};
    MSIRECORD *record;
    LPWSTR ret = NULL;

    if ((record = FUNC1(db, query, error)))
    {
        ret = FUNC3(record, 1);
        FUNC4(&record->hdr);
    }
    else if (error < 2000)
    {
        int len = FUNC0(msi_hInstance, IDS_ERROR_BASE + error, (LPWSTR) &ret, 0);
        if (len)
        {
            ret = FUNC2((len + 1) * sizeof(WCHAR));
            FUNC0(msi_hInstance, IDS_ERROR_BASE + error, ret, len + 1);
        }
        else
            ret = NULL;
    }

    return ret;
}