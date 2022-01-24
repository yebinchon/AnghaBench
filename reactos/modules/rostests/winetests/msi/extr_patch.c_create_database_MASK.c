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
struct msi_table {int size; int /*<<< orphan*/  filename; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12( const char *filename, const struct msi_table *tables, UINT num_tables )
{
    MSIHANDLE hdb;
    UINT r, i;
    WCHAR *filenameW;
    int len;

    len = FUNC8( CP_ACP, 0, filename, -1, NULL, 0 );
    if (!(filenameW = FUNC2( FUNC1(), 0, len * sizeof(WCHAR) ))) return;
    FUNC8( CP_ACP, 0, filename, -1, filenameW, len );

    r = FUNC7( filenameW, MSIDBOPEN_CREATE, &hdb );
    FUNC9(r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r);

    /* import the tables into the database */
    for (i = 0; i < num_tables; i++)
    {
        const struct msi_table *table = &tables[i];

        FUNC11( table->filename, table->data, (table->size - 1) * sizeof(char) );

        r = FUNC6( hdb, CURR_DIR, table->filename );
        FUNC9(r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r);

        FUNC0( table->filename );
    }

    r = FUNC5( hdb );
    FUNC9(r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r);

    FUNC4( hdb );
    FUNC10( filenameW );
    FUNC3( FUNC1(), 0, filenameW );
}