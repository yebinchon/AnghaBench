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
struct record_directory {int /*<<< orphan*/  name; int /*<<< orphan*/  accessmask; } ;
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
 int /*<<< orphan*/  FILE_ALL_ACCESS ; 
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
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct table*,int,struct expr const*,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct dirstack*) ; 
 char* FUNC16 (struct dirstack*,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct dirstack*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct table*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct dirstack*,struct expr const*,char,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static enum fill_status FUNC21( struct table *table, const struct expr *cond )
{
    static const WCHAR dotW[] = {'.',0}, dotdotW[] = {'.','.',0};
    struct record_directory *rec;
    UINT i, len, row = 0, offset = 0, num_expected_rows;
    WCHAR *glob = NULL, *path = NULL, *new_path, root[] = {'A',':','\\',0};
    DWORD drives = FUNC4();
    WIN32_FIND_DATAW data;
    HANDLE handle;
    struct dirstack *dirstack;
    enum fill_status status = FILL_STATUS_UNFILTERED;

    if (!FUNC18( table, 4, sizeof(*rec) )) return FILL_STATUS_FAILED;

    dirstack = FUNC6(2);

    for (i = 0; i < 26; i++)
    {
        if (!(drives & (1 << i))) continue;

        root[0] = 'A' + i;
        if (FUNC3( root ) != DRIVE_FIXED) continue;

        num_expected_rows = 0;
        if (!FUNC19( dirstack, cond, root[0], &num_expected_rows )) FUNC10( dirstack );

        for (;;)
        {
            FUNC13( glob );
            FUNC13( path );
            path = FUNC16( dirstack, &len );
            if (!(glob = FUNC8( root[0], path, len )))
            {
                status = FILL_STATUS_FAILED;
                goto done;
            }
            if ((handle = FUNC1( glob, &data )) != INVALID_HANDLE_VALUE)
            {
                do
                {
                    if (!FUNC18( table, row + 1, sizeof(*rec) ))
                    {
                        FUNC0( handle );
                        status = FILL_STATUS_FAILED;
                        goto done;
                    }
                    if (!(data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) ||
                        !FUNC20( data.cFileName, dotW ) || !FUNC20( data.cFileName, dotdotW ))
                        continue;

                    new_path = FUNC7( path, data.cFileName, &len );
                    if (!(FUNC17( dirstack, new_path, len )))
                    {
                        FUNC13( new_path );
                        FUNC0( handle );
                        status = FILL_STATUS_FAILED;
                        goto done;
                    }
                    rec = (struct record_directory *)(table->data + offset);
                    rec->accessmask = FILE_ALL_ACCESS;
                    rec->name       = FUNC9( root[0], new_path );
                    if (!FUNC14( table, row, cond, &status ))
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
            if (!FUNC15( dirstack )) break;
        }
    }

done:
    FUNC11( dirstack );
    FUNC13( glob );
    FUNC13( path );

    FUNC5("created %u rows\n", row);
    table->num_rows = row;
    return status;
}