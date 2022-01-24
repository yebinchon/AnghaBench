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
struct table {int data; int num_rows; } ;
struct record_datafile {int /*<<< orphan*/  name; int /*<<< orphan*/  version; } ;
struct expr {int dummy; } ;
struct dirstack {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
struct TYPE_4__ {int dwFileAttributes; int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  char WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DRIVE_FIXED ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILL_STATUS_FAILED ; 
 int FILL_STATUS_FILTERED ; 
 int FILL_STATUS_UNFILTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 struct dirstack* FUNC6 (int) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ,int*) ; 
 char* FUNC8 (char,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct dirstack*) ; 
 int /*<<< orphan*/  FUNC11 (struct dirstack*) ; 
 int /*<<< orphan*/  FUNC12 (struct table*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct table*,int,struct expr const*,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct dirstack*) ; 
 char* FUNC17 (struct dirstack*,int*) ; 
 scalar_t__ FUNC18 (struct dirstack*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct table*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct dirstack*,struct expr const*,char,int*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static enum fill_status FUNC22( struct table *table, const struct expr *cond )
{
    static const WCHAR dotW[] = {'.',0}, dotdotW[] = {'.','.',0};
    struct record_datafile *rec;
    UINT i, len, row = 0, offset = 0, num_expected_rows;
    WCHAR *glob = NULL, *path = NULL, *new_path, root[] = {'A',':','\\',0};
    DWORD drives = FUNC4();
    WIN32_FIND_DATAW data;
    HANDLE handle;
    struct dirstack *dirstack;
    enum fill_status status = FILL_STATUS_UNFILTERED;

    if (!FUNC19( table, 8, sizeof(*rec) )) return FILL_STATUS_FAILED;

    dirstack = FUNC6(2);

    for (i = 0; i < 26; i++)
    {
        if (!(drives & (1 << i))) continue;

        root[0] = 'A' + i;
        if (FUNC3( root ) != DRIVE_FIXED) continue;

        num_expected_rows = 0;
        if (!FUNC20( dirstack, cond, root[0], &num_expected_rows )) FUNC10( dirstack );

        for (;;)
        {
            FUNC14( glob );
            FUNC14( path );
            path = FUNC17( dirstack, &len );
            if (!(glob = FUNC8( root[0], path, len )))
            {
                status = FILL_STATUS_FAILED;
                goto done;
            }
            if ((handle = FUNC1( glob, &data )) != INVALID_HANDLE_VALUE)
            {
                do
                {
                    if (!FUNC19( table, row + 1, sizeof(*rec) ))
                    {
                        status = FILL_STATUS_FAILED;
                        FUNC0( handle );
                        goto done;
                    }
                    if (!FUNC21( data.cFileName, dotW ) || !FUNC21( data.cFileName, dotdotW )) continue;
                    new_path = FUNC7( path, data.cFileName, &len );

                    if (data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
                    {
                        if (FUNC18( dirstack, new_path, len )) continue;
                        FUNC14( new_path );
                        FUNC0( handle );
                        status = FILL_STATUS_FAILED;
                        goto done;
                    }
                    rec = (struct record_datafile *)(table->data + offset);
                    rec->name    = FUNC9( root[0], new_path );
                    rec->version = FUNC13( rec->name );
                    if (!FUNC15( table, row, cond, &status ))
                    {
                        FUNC12( table, row );
                        continue;
                    }
                    else if (num_expected_rows && row == num_expected_rows - 1)
                    {
                        row++;
                        FUNC0( handle );
                        status = FILL_STATUS_FILTERED;
                        goto done;
                    }
                    offset += sizeof(*rec);
                    row++;
                }
                while (FUNC2( handle, &data ));
                FUNC0( handle );
            }
            if (!FUNC16( dirstack )) break;
        }
    }

done:
    FUNC11( dirstack );
    FUNC14( glob );
    FUNC14( path );

    FUNC5("created %u rows\n", row);
    table->num_rows = row;
    return status;
}