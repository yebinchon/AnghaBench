#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_14__ {int /*<<< orphan*/ * disk_prompt; } ;
struct TYPE_13__ {int /*<<< orphan*/  db; } ;
struct TYPE_12__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  TYPE_3__ MSIMEDIAINFO ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 scalar_t__ IDRETRY ; 
 int INSTALLMESSAGE_ERROR ; 
 int MB_RETRYCANCEL ; 
 int /*<<< orphan*/  MSIERR_CABNOTFOUND ; 
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szSourceDir ; 

__attribute__((used)) static UINT FUNC8(MSIPACKAGE *package, MSIMEDIAINFO *mi)
{
    MSIRECORD *record;
    LPWSTR source_dir;
    UINT r = IDRETRY;

    source_dir = FUNC4(package->db, szSourceDir);
    record = FUNC0(2);

    while (r == IDRETRY && !FUNC7(mi, source_dir))
    {
        FUNC3(record, 0, NULL);
        FUNC2(record, 1, MSIERR_CABNOTFOUND);
        FUNC3(record, 2, mi->disk_prompt);
        r = FUNC1(package, INSTALLMESSAGE_ERROR | MB_RETRYCANCEL, record);
    }

    FUNC6(&record->hdr);
    FUNC5(source_dir);

    return r;
}