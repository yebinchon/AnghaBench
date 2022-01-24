#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int size; int /*<<< orphan*/  filename; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ msi_table ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  CHAR ;

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
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC12(const CHAR *name, const msi_table *tables,
                                      int num_tables, INT version, INT wordcount,
                                      const char *template)
{
    MSIHANDLE db;
    UINT r;
    WCHAR *nameW;
    int j, len;

    len = FUNC8( CP_ACP, 0, name, -1, NULL, 0 );
    if (!(nameW = FUNC2( FUNC1(), 0, len * sizeof(WCHAR) ))) return;
    FUNC8( CP_ACP, 0, name, -1, nameW, len );

    r = FUNC7(nameW, MSIDBOPEN_CREATE, &db);
    FUNC9(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    /* import the tables into the database */
    for (j = 0; j < num_tables; j++)
    {
        const msi_table *table = &tables[j];

        FUNC10(table->filename, table->data, (table->size - 1) * sizeof(char));

        r = FUNC6(db, CURR_DIR, table->filename);
        FUNC9(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

        FUNC0(table->filename);
    }

    FUNC11(db, version, wordcount, template);

    r = FUNC5(db);
    FUNC9(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    FUNC4(db);
    FUNC3( FUNC1(), 0, nameW );
}