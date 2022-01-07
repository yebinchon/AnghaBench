
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct table {int data; int num_rows; } ;
struct record_datafile {int name; int version; } ;
struct expr {int dummy; } ;
struct dirstack {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
struct TYPE_4__ {int dwFileAttributes; int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef char WCHAR ;
typedef int UINT ;
typedef int HANDLE ;
typedef int DWORD ;


 scalar_t__ DRIVE_FIXED ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILL_STATUS_FAILED ;
 int FILL_STATUS_FILTERED ;
 int FILL_STATUS_UNFILTERED ;
 int FindClose (int ) ;
 int FindFirstFileW (char*,TYPE_1__*) ;
 scalar_t__ FindNextFileW (int ,TYPE_1__*) ;
 scalar_t__ GetDriveTypeW (char*) ;
 int GetLogicalDrives () ;
 int INVALID_HANDLE_VALUE ;
 int TRACE (char*,int) ;
 struct dirstack* alloc_dirstack (int) ;
 char* append_path (char*,int ,int*) ;
 char* build_glob (char,char*,int) ;
 int build_name (char,char*) ;
 int clear_dirstack (struct dirstack*) ;
 int free_dirstack (struct dirstack*) ;
 int free_row_values (struct table*,int) ;
 int get_file_version (int ) ;
 int heap_free (char*) ;
 int match_row (struct table*,int,struct expr const*,int*) ;
 int peek_dir (struct dirstack*) ;
 char* pop_dir (struct dirstack*,int*) ;
 scalar_t__ push_dir (struct dirstack*,char*,int) ;
 int resize_table (struct table*,int,int) ;
 int seed_dirs (struct dirstack*,struct expr const*,char,int*) ;
 int strcmpW (int ,char const*) ;

__attribute__((used)) static enum fill_status fill_datafile( struct table *table, const struct expr *cond )
{
    static const WCHAR dotW[] = {'.',0}, dotdotW[] = {'.','.',0};
    struct record_datafile *rec;
    UINT i, len, row = 0, offset = 0, num_expected_rows;
    WCHAR *glob = ((void*)0), *path = ((void*)0), *new_path, root[] = {'A',':','\\',0};
    DWORD drives = GetLogicalDrives();
    WIN32_FIND_DATAW data;
    HANDLE handle;
    struct dirstack *dirstack;
    enum fill_status status = FILL_STATUS_UNFILTERED;

    if (!resize_table( table, 8, sizeof(*rec) )) return FILL_STATUS_FAILED;

    dirstack = alloc_dirstack(2);

    for (i = 0; i < 26; i++)
    {
        if (!(drives & (1 << i))) continue;

        root[0] = 'A' + i;
        if (GetDriveTypeW( root ) != DRIVE_FIXED) continue;

        num_expected_rows = 0;
        if (!seed_dirs( dirstack, cond, root[0], &num_expected_rows )) clear_dirstack( dirstack );

        for (;;)
        {
            heap_free( glob );
            heap_free( path );
            path = pop_dir( dirstack, &len );
            if (!(glob = build_glob( root[0], path, len )))
            {
                status = FILL_STATUS_FAILED;
                goto done;
            }
            if ((handle = FindFirstFileW( glob, &data )) != INVALID_HANDLE_VALUE)
            {
                do
                {
                    if (!resize_table( table, row + 1, sizeof(*rec) ))
                    {
                        status = FILL_STATUS_FAILED;
                        FindClose( handle );
                        goto done;
                    }
                    if (!strcmpW( data.cFileName, dotW ) || !strcmpW( data.cFileName, dotdotW )) continue;
                    new_path = append_path( path, data.cFileName, &len );

                    if (data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
                    {
                        if (push_dir( dirstack, new_path, len )) continue;
                        heap_free( new_path );
                        FindClose( handle );
                        status = FILL_STATUS_FAILED;
                        goto done;
                    }
                    rec = (struct record_datafile *)(table->data + offset);
                    rec->name = build_name( root[0], new_path );
                    rec->version = get_file_version( rec->name );
                    if (!match_row( table, row, cond, &status ))
                    {
                        free_row_values( table, row );
                        continue;
                    }
                    else if (num_expected_rows && row == num_expected_rows - 1)
                    {
                        row++;
                        FindClose( handle );
                        status = FILL_STATUS_FILTERED;
                        goto done;
                    }
                    offset += sizeof(*rec);
                    row++;
                }
                while (FindNextFileW( handle, &data ));
                FindClose( handle );
            }
            if (!peek_dir( dirstack )) break;
        }
    }

done:
    free_dirstack( dirstack );
    heap_free( glob );
    heap_free( path );

    TRACE("created %u rows\n", row);
    table->num_rows = row;
    return status;
}
