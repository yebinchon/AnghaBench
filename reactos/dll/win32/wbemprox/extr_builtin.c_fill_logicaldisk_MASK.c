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
struct record_logicaldisk {int drivetype; int size; int /*<<< orphan*/  volumeserialnumber; int /*<<< orphan*/  volumename; void* name; int /*<<< orphan*/  freespace; int /*<<< orphan*/  filesystem; void* device_id; } ;
struct expr {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef  char WCHAR ;
typedef  int UINT64 ;
typedef  int UINT ;
typedef  int DWORD ;

/* Variables and functions */
 int DRIVE_CDROM ; 
 int DRIVE_FIXED ; 
 int DRIVE_REMOVABLE ; 
 int FILL_STATUS_FAILED ; 
 int FILL_STATUS_UNFILTERED ; 
 int FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct table*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 void* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct table*,int,struct expr const*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct table*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,char) ; 

__attribute__((used)) static enum fill_status FUNC12( struct table *table, const struct expr *cond )
{
    static const WCHAR fmtW[] = {'%','c',':',0};
    WCHAR device_id[3], root[] = {'A',':','\\',0};
    struct record_logicaldisk *rec;
    UINT i, row = 0, offset = 0, type;
    UINT64 size = 1024 * 1024 * 1024;
    DWORD drives = FUNC1();
    enum fill_status status = FILL_STATUS_UNFILTERED;

    if (!FUNC10( table, 4, sizeof(*rec) )) return FILL_STATUS_FAILED;

    for (i = 0; i < 26; i++)
    {
        if (drives & (1 << i))
        {
            root[0] = 'A' + i;
            type = FUNC0( root );
            if (type != DRIVE_FIXED && type != DRIVE_CDROM && type != DRIVE_REMOVABLE)
                continue;

            if (!FUNC10( table, row + 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

            rec = (struct record_logicaldisk *)(table->data + offset);
            FUNC11( device_id, fmtW, 'A' + i );
            rec->device_id          = FUNC8( device_id );
            rec->drivetype          = type;
            rec->filesystem         = FUNC4( root );
            rec->freespace          = FUNC5( root, &size );
            rec->name               = FUNC8( device_id );
            rec->size               = size;
            rec->volumename         = FUNC6( root );
            rec->volumeserialnumber = FUNC7( root );
            if (!FUNC9( table, row, cond, &status ))
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