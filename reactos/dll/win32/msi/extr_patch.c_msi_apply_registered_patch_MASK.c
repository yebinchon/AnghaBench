#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  patch_file ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_18__ {int /*<<< orphan*/  hdr; int /*<<< orphan*/  storage; } ;
struct TYPE_17__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  ProductCode; } ;
struct TYPE_16__ {int /*<<< orphan*/  localfile; int /*<<< orphan*/  registered; } ;
struct TYPE_15__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSISUMMARYINFO ;
typedef  TYPE_2__ MSIPATCHINFO ;
typedef  TYPE_3__ MSIPACKAGE ;
typedef  TYPE_4__ MSIDATABASE ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  INSTALLPROPERTY_LOCALPACKAGEW ; 
 int MAX_PATH ; 
 scalar_t__ MSIDBOPEN_PATCHFILE ; 
 scalar_t__ MSIDBOPEN_READONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,TYPE_4__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC8 (TYPE_1__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

UINT FUNC11( MSIPACKAGE *package, LPCWSTR patch_code )
{
    UINT r;
    DWORD len;
    WCHAR patch_file[MAX_PATH];
    MSIDATABASE *patch_db;
    MSIPATCHINFO *patch_info;
    MSISUMMARYINFO *si;

    FUNC3("%p, %s\n", package, FUNC4(patch_code));

    len = sizeof(patch_file) / sizeof(WCHAR);
    r = FUNC2( patch_code, package->ProductCode, NULL, package->Context,
                            INSTALLPROPERTY_LOCALPACKAGEW, patch_file, &len );
    if (r != ERROR_SUCCESS)
    {
        FUNC0("failed to get patch filename %u\n", r);
        return r;
    }
    r = FUNC1( patch_file, MSIDBOPEN_READONLY + MSIDBOPEN_PATCHFILE, &patch_db );
    if (r != ERROR_SUCCESS)
    {
        FUNC0("failed to open patch database %s\n", FUNC4( patch_file ));
        return r;
    }
    r = FUNC7( patch_db->storage, 0, &si );
    if (r != ERROR_SUCCESS)
    {
        FUNC9( &patch_db->hdr );
        return r;
    }
    r = FUNC8( si, &patch_info );
    FUNC9( &si->hdr );
    if (r != ERROR_SUCCESS)
    {
        FUNC0("failed to parse patch summary %u\n", r);
        FUNC9( &patch_db->hdr );
        return r;
    }
    patch_info->registered = TRUE;
    patch_info->localfile = FUNC10( patch_file );
    if (!patch_info->localfile)
    {
        FUNC9( &patch_db->hdr );
        FUNC6( patch_info );
        return ERROR_OUTOFMEMORY;
    }
    r = FUNC5( package, patch_db, patch_info );
    FUNC9( &patch_db->hdr );
    if (r != ERROR_SUCCESS)
    {
        FUNC0("failed to apply patch %u\n", r);
        FUNC6( patch_info );
    }
    return r;
}