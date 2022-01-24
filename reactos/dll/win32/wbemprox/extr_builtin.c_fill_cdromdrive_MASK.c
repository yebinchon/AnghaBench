#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct table {int data; int num_rows; } ;
struct record_cdromdrive {void* pnpdevice_id; int /*<<< orphan*/  name; int /*<<< orphan*/  mediatype; int /*<<< orphan*/  drive; void* device_id; } ;
struct expr {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef  char WCHAR ;
typedef  int UINT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DRIVE_CDROM ; 
 int FILL_STATUS_FAILED ; 
 int FILL_STATUS_UNFILTERED ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  cdromdrive_mediatypeW ; 
 int /*<<< orphan*/  cdromdrive_nameW ; 
 void* cdromdrive_pnpdeviceidW ; 
 int /*<<< orphan*/  FUNC3 (struct table*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct table*,int,struct expr const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct table*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char) ; 

__attribute__((used)) static enum fill_status FUNC8( struct table *table, const struct expr *cond )
{
    static const WCHAR fmtW[] = {'%','c',':',0};
    WCHAR drive[3], root[] = {'A',':','\\',0};
    struct record_cdromdrive *rec;
    UINT i, row = 0, offset = 0;
    DWORD drives = FUNC1();
    enum fill_status status = FILL_STATUS_UNFILTERED;

    if (!FUNC6( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    for (i = 0; i < 26; i++)
    {
        if (drives & (1 << i))
        {
            root[0] = 'A' + i;
            if (FUNC0( root ) != DRIVE_CDROM)
                continue;

            if (!FUNC6( table, row + 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

            rec = (struct record_cdromdrive *)(table->data + offset);
            rec->device_id    = cdromdrive_pnpdeviceidW;
            FUNC7( drive, fmtW, 'A' + i );
            rec->drive        = FUNC4( drive );
            rec->mediatype    = cdromdrive_mediatypeW;
            rec->name         = cdromdrive_nameW;
            rec->pnpdevice_id = cdromdrive_pnpdeviceidW;
            if (!FUNC5( table, row, cond, &status ))
            {
                FUNC3( table, row );
                continue;
            }
            offset += sizeof(*rec);
            row++;
        }
    }
    FUNC2("created %u rows\n", row);
    table->num_rows = row;
    return status;
}