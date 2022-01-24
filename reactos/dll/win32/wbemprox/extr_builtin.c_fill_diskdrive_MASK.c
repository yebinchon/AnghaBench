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
struct record_diskdrive {int index; int size; int /*<<< orphan*/  serialnumber; int /*<<< orphan*/  pnpdevice_id; int /*<<< orphan*/  model; int /*<<< orphan*/  mediatype; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  interfacetype; int /*<<< orphan*/  device_id; } ;
struct expr {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef  char WCHAR ;
typedef  int UINT64 ;
typedef  int UINT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int DRIVE_FIXED ; 
 int DRIVE_REMOVABLE ; 
 int FILL_STATUS_FAILED ; 
 int FILL_STATUS_UNFILTERED ; 
 int FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  diskdrive_interfacetypeW ; 
 int /*<<< orphan*/  diskdrive_manufacturerW ; 
 int /*<<< orphan*/  diskdrive_mediatype_fixedW ; 
 int /*<<< orphan*/  diskdrive_mediatype_removableW ; 
 int /*<<< orphan*/  diskdrive_modelW ; 
 int /*<<< orphan*/  diskdrive_pnpdeviceidW ; 
 int /*<<< orphan*/  diskdrive_serialW ; 
 int /*<<< orphan*/  FUNC4 (struct table*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct table*,int,struct expr const*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct table*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 

__attribute__((used)) static enum fill_status FUNC10( struct table *table, const struct expr *cond )
{
    static const WCHAR fmtW[] =
        {'\\','\\','\\','\\','.','\\','\\','P','H','Y','S','I','C','A','L','D','R','I','V','E','%','u',0};
    WCHAR device_id[FUNC0( fmtW ) + 10], root[] = {'A',':','\\',0};
    struct record_diskdrive *rec;
    UINT i, row = 0, offset = 0, index = 0, type;
    UINT64 size = 1024 * 1024 * 1024;
    DWORD drives = FUNC2();
    enum fill_status status = FILL_STATUS_UNFILTERED;

    if (!FUNC8( table, 2, sizeof(*rec) )) return FILL_STATUS_FAILED;

    for (i = 0; i < 26; i++)
    {
        if (drives & (1 << i))
        {
            root[0] = 'A' + i;
            type = FUNC1( root );
            if (type != DRIVE_FIXED && type != DRIVE_REMOVABLE)
                continue;

            if (!FUNC8( table, row + 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

            rec = (struct record_diskdrive *)(table->data + offset);
            FUNC9( device_id, fmtW, index );
            rec->device_id     = FUNC6( device_id );
            rec->index         = index;
            rec->interfacetype = diskdrive_interfacetypeW;
            rec->manufacturer  = diskdrive_manufacturerW;
            if (type == DRIVE_FIXED)
                rec->mediatype = diskdrive_mediatype_fixedW;
            else
                rec->mediatype = diskdrive_mediatype_removableW;
            rec->model         = diskdrive_modelW;
            rec->pnpdevice_id  = diskdrive_pnpdeviceidW;
            rec->serialnumber  = diskdrive_serialW;
            FUNC5( root, &size );
            rec->size          = size;
            if (!FUNC7( table, row, cond, &status ))
            {
                FUNC4( table, row );
                continue;
            }
            offset += sizeof(*rec);
            index++;
            row++;
        }
    }
    FUNC3("created %u rows\n", row);
    table->num_rows = row;
    return status;
}