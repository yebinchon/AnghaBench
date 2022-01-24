#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {int /*<<< orphan*/  hdr; int /*<<< orphan*/  storage; } ;
struct TYPE_13__ {void* localfile; void* filename; int /*<<< orphan*/  registered; } ;
struct TYPE_12__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSISUMMARYINFO ;
typedef  TYPE_2__ MSIPATCHINFO ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_3__ MSIDATABASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 scalar_t__ MSIDBOPEN_PATCHFILE ; 
 scalar_t__ MSIDBOPEN_READONLY ; 
 scalar_t__ FUNC2 (char const*,scalar_t__,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC11 (TYPE_1__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (char const*) ; 

__attribute__((used)) static UINT FUNC14( MSIPACKAGE *package, const WCHAR *file )
{
    static const WCHAR dotmsp[] = {'.','m','s','p',0};
    MSIDATABASE *patch_db = NULL;
    WCHAR localfile[MAX_PATH];
    MSISUMMARYINFO *si;
    MSIPATCHINFO *patch = NULL;
    UINT r;

    FUNC3("%p, %s\n", package, FUNC5(file));

    r = FUNC2( file, MSIDBOPEN_READONLY + MSIDBOPEN_PATCHFILE, &patch_db );
    if (r != ERROR_SUCCESS)
    {
        FUNC1("failed to open patch collection %s\n", FUNC5( file ) );
        return r;
    }
    r = FUNC10( patch_db->storage, 0, &si );
    if (r != ERROR_SUCCESS)
    {
        FUNC12( &patch_db->hdr );
        return r;
    }
    r = FUNC7( package, si );
    if (r != ERROR_SUCCESS)
    {
        FUNC3("patch not applicable\n");
        r = ERROR_SUCCESS;
        goto done;
    }
    r = FUNC11( si, &patch );
    if ( r != ERROR_SUCCESS )
        goto done;

    r = FUNC8( localfile, dotmsp );
    if ( r != ERROR_SUCCESS )
        goto done;

    r = ERROR_OUTOFMEMORY;
    patch->registered = FALSE;
    if (!(patch->filename = FUNC13( file ))) goto done;
    if (!(patch->localfile = FUNC13( localfile ))) goto done;

    r = FUNC6( package, patch_db, patch );
    if (r != ERROR_SUCCESS) FUNC4("patch failed to apply %u\n", r);

done:
    FUNC12( &si->hdr );
    FUNC12( &patch_db->hdr );
    if (patch && r != ERROR_SUCCESS)
    {
        FUNC0( patch->localfile );
        FUNC9( patch );
    }
    return r;
}