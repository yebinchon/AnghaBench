#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_16__ {int /*<<< orphan*/  path; int /*<<< orphan*/  hdr; } ;
struct TYPE_15__ {int WordCount; int ui_level; int /*<<< orphan*/  log_file; int /*<<< orphan*/  hdr; TYPE_2__* db; int /*<<< orphan*/  ProductCode; void* BaseURL; void* PackagePath; int /*<<< orphan*/  LastActionResult; int /*<<< orphan*/ * LastActionTemplate; int /*<<< orphan*/ * LastAction; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIDATABASE ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int INSTALLUILEVEL_MASK ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MSI_NULL_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int gUILevel ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int msidbSumInfoSourceTypeAdminImage ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (char*,char const*,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szProductCode ; 
 int /*<<< orphan*/  szUILevel ; 

MSIPACKAGE *FUNC14( MSIDATABASE *db, LPCWSTR base_url )
{
    static const WCHAR fmtW[] = {'%','u',0};
    MSIPACKAGE *package;
    WCHAR uilevel[11];
    int len;
    UINT r;

    FUNC0("%p\n", db);

    package = FUNC3();
    if (package)
    {
        FUNC9( &db->hdr );
        package->db = db;

        package->LastAction = NULL;
        package->LastActionTemplate = NULL;
        package->LastActionResult = MSI_NULL_INTEGER;
        package->WordCount = 0;
        package->PackagePath = FUNC13( db->path );
        package->BaseURL = FUNC13( base_url );

        FUNC1( package );
        FUNC4( package->db );
        FUNC2( package );

        package->ProductCode = FUNC5( package->db, szProductCode );

        FUNC11( package );

        package->ui_level = gUILevel;
        len = FUNC12( uilevel, fmtW, gUILevel & INSTALLUILEVEL_MASK );
        FUNC8( package->db, szUILevel, uilevel, len );

        r = FUNC7( package );
        if (r != ERROR_SUCCESS)
        {
            FUNC10( &package->hdr );
            return NULL;
        }

        if (package->WordCount & msidbSumInfoSourceTypeAdminImage)
            FUNC6( package );

        package->log_file = INVALID_HANDLE_VALUE;
    }
    return package;
}