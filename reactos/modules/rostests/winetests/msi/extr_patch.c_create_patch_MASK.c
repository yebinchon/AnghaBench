#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int member_0; int member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_5__ {int member_0; TYPE_1__ member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  TYPE_2__ CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NUM_PATCH_TABLES ; 
 int /*<<< orphan*/  NUM_TRANSFORM1_TABLES ; 
 int /*<<< orphan*/  NUM_TRANSFORM2_TABLES ; 
 int STGM_CREATE ; 
 int STGM_DIRECT ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  p_name7 ; 
 int /*<<< orphan*/  p_name8 ; 
 int /*<<< orphan*/  table_patch_data ; 
 int /*<<< orphan*/  table_transform1_data ; 
 int /*<<< orphan*/  table_transform2_data ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10( const char *filename )
{
    IStorage *stg = NULL, *stg1 = NULL, *stg2 = NULL;
    WCHAR *filenameW;
    HRESULT r;
    int len;
    const DWORD mode = STGM_CREATE|STGM_READWRITE|STGM_DIRECT|STGM_SHARE_EXCLUSIVE;

    const CLSID CLSID_MsiPatch = {0xc1086, 0, 0, {0xc0, 0, 0, 0, 0, 0, 0, 0x46}};
    const CLSID CLSID_MsiTransform = {0xc1082, 0, 0, {0xc0, 0, 0, 0, 0, 0, 0, 0x46}};

    len = FUNC6( CP_ACP, 0, filename, -1, NULL, 0 );
    filenameW = FUNC1( FUNC0(), 0, len * sizeof(WCHAR) );
    FUNC6( CP_ACP, 0, filename, -1, filenameW, len );

    r = FUNC7( filenameW, mode, 0, &stg );
    FUNC2( FUNC0(), 0, filenameW );
    FUNC8( r == S_OK, "failed to create storage 0x%08x\n", r );
    if (!stg)
        return;

    r = FUNC5( stg, &CLSID_MsiPatch );
    FUNC8( r == S_OK, "failed to set storage type 0x%08x\n", r );

    FUNC9( stg, table_patch_data, NUM_PATCH_TABLES );

    r = FUNC3( stg, p_name7, mode, 0, 0, &stg1 );
    FUNC8( r == S_OK, "failed to create substorage 0x%08x\n", r );

    r = FUNC5( stg1, &CLSID_MsiTransform );
    FUNC8( r == S_OK, "failed to set storage type 0x%08x\n", r );

    FUNC9( stg1, table_transform1_data, NUM_TRANSFORM1_TABLES );
    FUNC4( stg1 );

    r = FUNC3( stg, p_name8, mode, 0, 0, &stg2 );
    FUNC8( r == S_OK, "failed to create substorage 0x%08x\n", r );

    r = FUNC5( stg2, &CLSID_MsiTransform );
    FUNC8( r == S_OK, "failed to set storage type 0x%08x\n", r );

    FUNC9( stg2, table_transform2_data, NUM_TRANSFORM2_TABLES );
    FUNC4( stg2 );
    FUNC4( stg );
}