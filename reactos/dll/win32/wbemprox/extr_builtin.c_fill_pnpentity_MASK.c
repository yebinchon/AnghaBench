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
struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_pnpentity {int /*<<< orphan*/  device_id; } ;
struct expr {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef  int /*<<< orphan*/  devinfo ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int cbSize; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SP_DEVINFO_DATA ;
typedef  int /*<<< orphan*/  HDEVINFO ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int DIGCF_ALLCLASSES ; 
 int DIGCF_PRESENT ; 
 int FILL_STATUS_UNFILTERED ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct table*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct table*,scalar_t__,struct expr const*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct table*,scalar_t__,int) ; 

__attribute__((used)) static enum fill_status FUNC9( struct table *table, const struct expr *cond )
{
    struct record_pnpentity *rec;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    HDEVINFO device_info_set;
    SP_DEVINFO_DATA devinfo = {0};
    DWORD idx;

    device_info_set = FUNC3( NULL, NULL, NULL, DIGCF_ALLCLASSES|DIGCF_PRESENT );

    devinfo.cbSize = sizeof(devinfo);

    idx = 0;
    while (FUNC2( device_info_set, idx++, &devinfo ))
    {
        /* noop */
    }

    FUNC8( table, idx, sizeof(*rec) );
    table->num_rows = 0;
    rec = (struct record_pnpentity *)table->data;

    idx = 0;
    while (FUNC2( device_info_set, idx++, &devinfo ))
    {
        WCHAR device_id[MAX_PATH];
        if (FUNC4( device_info_set, &devinfo, device_id,
                    FUNC0(device_id), NULL ))
        {
            rec->device_id = FUNC6( device_id );

            table->num_rows++;
            if (!FUNC7( table, table->num_rows - 1, cond, &status ))
            {
                FUNC5( table, table->num_rows - 1 );
                table->num_rows--;
            }
            else
                rec++;
        }
    }

    FUNC1( device_info_set );

    return status;
}