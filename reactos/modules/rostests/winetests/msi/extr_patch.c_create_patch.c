
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int member_0; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_5__ {int member_0; TYPE_1__ member_3; int member_2; int member_1; } ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef TYPE_2__ CLSID ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ IStorage_CreateStorage (int *,int ,int const,int ,int ,int **) ;
 int IStorage_Release (int *) ;
 scalar_t__ IStorage_SetClass (int *,TYPE_2__ const*) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int NUM_PATCH_TABLES ;
 int NUM_TRANSFORM1_TABLES ;
 int NUM_TRANSFORM2_TABLES ;
 int STGM_CREATE ;
 int STGM_DIRECT ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (int *,int const,int ,int **) ;
 int ok (int,char*,scalar_t__) ;
 int p_name7 ;
 int p_name8 ;
 int table_patch_data ;
 int table_transform1_data ;
 int table_transform2_data ;
 int write_tables (int *,int ,int ) ;

__attribute__((used)) static void create_patch( const char *filename )
{
    IStorage *stg = ((void*)0), *stg1 = ((void*)0), *stg2 = ((void*)0);
    WCHAR *filenameW;
    HRESULT r;
    int len;
    const DWORD mode = STGM_CREATE|STGM_READWRITE|STGM_DIRECT|STGM_SHARE_EXCLUSIVE;

    const CLSID CLSID_MsiPatch = {0xc1086, 0, 0, {0xc0, 0, 0, 0, 0, 0, 0, 0x46}};
    const CLSID CLSID_MsiTransform = {0xc1082, 0, 0, {0xc0, 0, 0, 0, 0, 0, 0, 0x46}};

    len = MultiByteToWideChar( CP_ACP, 0, filename, -1, ((void*)0), 0 );
    filenameW = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) );
    MultiByteToWideChar( CP_ACP, 0, filename, -1, filenameW, len );

    r = StgCreateDocfile( filenameW, mode, 0, &stg );
    HeapFree( GetProcessHeap(), 0, filenameW );
    ok( r == S_OK, "failed to create storage 0x%08x\n", r );
    if (!stg)
        return;

    r = IStorage_SetClass( stg, &CLSID_MsiPatch );
    ok( r == S_OK, "failed to set storage type 0x%08x\n", r );

    write_tables( stg, table_patch_data, NUM_PATCH_TABLES );

    r = IStorage_CreateStorage( stg, p_name7, mode, 0, 0, &stg1 );
    ok( r == S_OK, "failed to create substorage 0x%08x\n", r );

    r = IStorage_SetClass( stg1, &CLSID_MsiTransform );
    ok( r == S_OK, "failed to set storage type 0x%08x\n", r );

    write_tables( stg1, table_transform1_data, NUM_TRANSFORM1_TABLES );
    IStorage_Release( stg1 );

    r = IStorage_CreateStorage( stg, p_name8, mode, 0, 0, &stg2 );
    ok( r == S_OK, "failed to create substorage 0x%08x\n", r );

    r = IStorage_SetClass( stg2, &CLSID_MsiTransform );
    ok( r == S_OK, "failed to set storage type 0x%08x\n", r );

    write_tables( stg2, table_transform2_data, NUM_TRANSFORM2_TABLES );
    IStorage_Release( stg2 );
    IStorage_Release( stg );
}
