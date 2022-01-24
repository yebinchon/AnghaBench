#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  storage; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSISUMMARYINFO ;
typedef  TYPE_2__ MSIDATABASE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  PID_REVNUMBER ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static WCHAR *FUNC5( MSIDATABASE *db )
{
    WCHAR *ret;
    MSISUMMARYINFO *si;
    UINT r;

    r = FUNC2( db->storage, 0, &si );
    if (r != ERROR_SUCCESS)
    {
        r = FUNC1( db, 0, &si );
        if (r != ERROR_SUCCESS)
        {
            FUNC0("failed to load summary info %u\n", r);
            return NULL;
        }
    }
    ret = FUNC3( si, PID_REVNUMBER );
    FUNC4( &si->hdr );
    return ret;
}