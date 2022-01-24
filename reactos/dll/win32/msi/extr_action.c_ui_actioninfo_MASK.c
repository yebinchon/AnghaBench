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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  LastActionResult; int /*<<< orphan*/  db; } ;
struct TYPE_9__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  INSTALLMESSAGE_INFO ; 
 int /*<<< orphan*/  MSIERR_INFO_ACTIONENDED ; 
 int /*<<< orphan*/  MSIERR_INFO_ACTIONSTART ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(MSIPACKAGE *package, LPCWSTR action, BOOL start, 
                          INT rc)
{
    MSIRECORD *row;
    WCHAR *template;

    template = FUNC5(package->db, start ? MSIERR_INFO_ACTIONSTART : MSIERR_INFO_ACTIONENDED);

    row = FUNC0(2);
    if (!row)
    {
        FUNC4(template);
        return;
    }
    FUNC3(row, 0, template);
    FUNC3(row, 1, action);
    FUNC2(row, 2, start ? package->LastActionResult : rc);
    FUNC1(package, INSTALLMESSAGE_INFO, row);
    FUNC6(&row->hdr);
    FUNC4(template);
    if (!start) package->LastActionResult = rc;
}