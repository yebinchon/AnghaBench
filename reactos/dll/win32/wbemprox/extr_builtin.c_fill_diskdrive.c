
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int data; int num_rows; } ;
struct record_diskdrive {int index; int size; int serialnumber; int pnpdevice_id; int model; int mediatype; int manufacturer; int interfacetype; int device_id; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef char WCHAR ;
typedef int UINT64 ;
typedef int UINT ;
typedef int DWORD ;


 int ARRAY_SIZE (char const*) ;
 int DRIVE_FIXED ;
 int DRIVE_REMOVABLE ;
 int FILL_STATUS_FAILED ;
 int FILL_STATUS_UNFILTERED ;
 int GetDriveTypeW (char*) ;
 int GetLogicalDrives () ;
 int TRACE (char*,int) ;
 int diskdrive_interfacetypeW ;
 int diskdrive_manufacturerW ;
 int diskdrive_mediatype_fixedW ;
 int diskdrive_mediatype_removableW ;
 int diskdrive_modelW ;
 int diskdrive_pnpdeviceidW ;
 int diskdrive_serialW ;
 int free_row_values (struct table*,int) ;
 int get_freespace (char*,int*) ;
 int heap_strdupW (char*) ;
 int match_row (struct table*,int,struct expr const*,int*) ;
 int resize_table (struct table*,int,int) ;
 int sprintfW (char*,char const*,int) ;

__attribute__((used)) static enum fill_status fill_diskdrive( struct table *table, const struct expr *cond )
{
    static const WCHAR fmtW[] =
        {'\\','\\','\\','\\','.','\\','\\','P','H','Y','S','I','C','A','L','D','R','I','V','E','%','u',0};
    WCHAR device_id[ARRAY_SIZE( fmtW ) + 10], root[] = {'A',':','\\',0};
    struct record_diskdrive *rec;
    UINT i, row = 0, offset = 0, index = 0, type;
    UINT64 size = 1024 * 1024 * 1024;
    DWORD drives = GetLogicalDrives();
    enum fill_status status = FILL_STATUS_UNFILTERED;

    if (!resize_table( table, 2, sizeof(*rec) )) return FILL_STATUS_FAILED;

    for (i = 0; i < 26; i++)
    {
        if (drives & (1 << i))
        {
            root[0] = 'A' + i;
            type = GetDriveTypeW( root );
            if (type != DRIVE_FIXED && type != DRIVE_REMOVABLE)
                continue;

            if (!resize_table( table, row + 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

            rec = (struct record_diskdrive *)(table->data + offset);
            sprintfW( device_id, fmtW, index );
            rec->device_id = heap_strdupW( device_id );
            rec->index = index;
            rec->interfacetype = diskdrive_interfacetypeW;
            rec->manufacturer = diskdrive_manufacturerW;
            if (type == DRIVE_FIXED)
                rec->mediatype = diskdrive_mediatype_fixedW;
            else
                rec->mediatype = diskdrive_mediatype_removableW;
            rec->model = diskdrive_modelW;
            rec->pnpdevice_id = diskdrive_pnpdeviceidW;
            rec->serialnumber = diskdrive_serialW;
            get_freespace( root, &size );
            rec->size = size;
            if (!match_row( table, row, cond, &status ))
            {
                free_row_values( table, row );
                continue;
            }
            offset += sizeof(*rec);
            index++;
            row++;
        }
    }
    TRACE("created %u rows\n", row);
    table->num_rows = row;
    return status;
}
