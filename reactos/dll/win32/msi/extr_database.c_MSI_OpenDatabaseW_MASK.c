#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  hdr; int /*<<< orphan*/  strings; int /*<<< orphan*/  bytes_per_strref; int /*<<< orphan*/  transforms; int /*<<< orphan*/  tables; void* deletefile; scalar_t__ mode; int /*<<< orphan*/ * storage; int /*<<< orphan*/  media_transform_disk_id; int /*<<< orphan*/  media_transform_offset; void* path; } ;
struct TYPE_6__ {int /*<<< orphan*/  clsid; } ;
typedef  TYPE_1__ STATSTG ;
typedef  TYPE_2__ MSIDATABASE ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_MsiDatabase ; 
 int /*<<< orphan*/  CLSID_MsiPatch ; 
 int /*<<< orphan*/  CLSID_MsiTransform ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_OPEN_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ MSIDBOPEN_CREATE ; 
 scalar_t__ MSIDBOPEN_CREATEDIRECT ; 
 scalar_t__ MSIDBOPEN_DIRECT ; 
 scalar_t__ MSIDBOPEN_PATCHFILE ; 
 scalar_t__ MSIDBOPEN_READONLY ; 
 scalar_t__ MSIDBOPEN_TRANSACT ; 
 int /*<<< orphan*/  MSIHANDLETYPE_DATABASE ; 
 int /*<<< orphan*/  MSI_CloseDatabase ; 
 int /*<<< orphan*/  MSI_INITIAL_MEDIA_TRANSFORM_DISKID ; 
 int /*<<< orphan*/  MSI_INITIAL_MEDIA_TRANSFORM_OFFSET ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int STGM_CREATE ; 
 int STGM_DIRECT ; 
 int STGM_READ ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_DENY_WRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_TRANSACTED ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  msi ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,char) ; 
 void* FUNC28 (scalar_t__) ; 
 scalar_t__ szBackSlash ; 

UINT FUNC29(LPCWSTR szDBPath, LPCWSTR szPersist, MSIDATABASE **pdb)
{
    IStorage *stg = NULL;
    HRESULT r;
    MSIDATABASE *db = NULL;
    UINT ret = ERROR_FUNCTION_FAILED;
    LPCWSTR szMode, save_path;
    STATSTG stat;
    BOOL created = FALSE, patch = FALSE;
    WCHAR path[MAX_PATH];

    FUNC13("%s %s\n",FUNC19(szDBPath),FUNC19(szPersist) );

    if( !pdb )
        return ERROR_INVALID_PARAMETER;

    if (szPersist - MSIDBOPEN_PATCHFILE <= MSIDBOPEN_CREATEDIRECT)
    {
        FUNC13("Database is a patch\n");
        szPersist -= MSIDBOPEN_PATCHFILE;
        patch = TRUE;
    }

    save_path = szDBPath;
    szMode = szPersist;
    if( !FUNC5(szPersist) )
    {
        if (!FUNC0( szDBPath, szPersist, FALSE ))
            return ERROR_OPEN_FAILED;

        szDBPath = szPersist;
        szPersist = MSIDBOPEN_TRANSACT;
        created = TRUE;
    }

    if( szPersist == MSIDBOPEN_READONLY )
    {
        r = FUNC12( szDBPath, NULL,
              STGM_DIRECT|STGM_READ|STGM_SHARE_DENY_WRITE, NULL, 0, &stg);
    }
    else if( szPersist == MSIDBOPEN_CREATE )
    {
        r = FUNC11( szDBPath,
              STGM_CREATE|STGM_TRANSACTED|STGM_READWRITE|STGM_SHARE_EXCLUSIVE, 0, &stg );

        if( FUNC10(r) )
            r = FUNC17( stg, patch ? &CLSID_MsiPatch : &CLSID_MsiDatabase );
        created = TRUE;
    }
    else if( szPersist == MSIDBOPEN_CREATEDIRECT )
    {
        r = FUNC11( szDBPath,
              STGM_CREATE|STGM_DIRECT|STGM_READWRITE|STGM_SHARE_EXCLUSIVE, 0, &stg );

        if( FUNC10(r) )
            r = FUNC17( stg, patch ? &CLSID_MsiPatch : &CLSID_MsiDatabase );
        created = TRUE;
    }
    else if( szPersist == MSIDBOPEN_TRANSACT )
    {
        r = FUNC12( szDBPath, NULL,
              STGM_TRANSACTED|STGM_READWRITE|STGM_SHARE_DENY_WRITE, NULL, 0, &stg);
    }
    else if( szPersist == MSIDBOPEN_DIRECT )
    {
        r = FUNC12( szDBPath, NULL,
              STGM_DIRECT|STGM_READWRITE|STGM_SHARE_EXCLUSIVE, NULL, 0, &stg);
    }
    else
    {
        FUNC1("unknown flag %p\n",szPersist);
        return ERROR_INVALID_PARAMETER;
    }

    if( FUNC2( r ) || !stg )
    {
        FUNC15("open failed r = %08x for %s\n", r, FUNC19(szDBPath));
        return ERROR_FUNCTION_FAILED;
    }

    r = FUNC8( stg, &stat, STATFLAG_NONAME );
    if( FUNC2( r ) )
    {
        FUNC3("Failed to stat storage\n");
        goto end;
    }

    if ( !FUNC9( &stat.clsid, &CLSID_MsiDatabase ) &&
         !FUNC9( &stat.clsid, &CLSID_MsiPatch ) &&
         !FUNC9( &stat.clsid, &CLSID_MsiTransform ) )
    {
        FUNC1("storage GUID is not a MSI database GUID %s\n",
             FUNC18(&stat.clsid) );
        goto end;
    }

    if ( patch && !FUNC9( &stat.clsid, &CLSID_MsiPatch ) )
    {
        FUNC1("storage GUID is not the MSI patch GUID %s\n",
             FUNC18(&stat.clsid) );
        ret = ERROR_OPEN_FAILED;
        goto end;
    }

    db = FUNC16( MSIHANDLETYPE_DATABASE, sizeof (MSIDATABASE),
                              MSI_CloseDatabase );
    if( !db )
    {
        FUNC3("Failed to allocate a handle\n");
        goto end;
    }

    if (!FUNC27( save_path, '\\' ))
    {
        FUNC4( MAX_PATH, path );
        FUNC22( path, szBackSlash );
        FUNC22( path, save_path );
    }
    else
        FUNC23( path, save_path );

    db->path = FUNC28( path );
    db->media_transform_offset = MSI_INITIAL_MEDIA_TRANSFORM_OFFSET;
    db->media_transform_disk_id = MSI_INITIAL_MEDIA_TRANSFORM_DISKID;

    if( FUNC14( msi ) )
        FUNC20( stg );

    db->storage = stg;
    db->mode = szMode;
    if (created)
        db->deletefile = FUNC28( szDBPath );
    FUNC21( &db->tables );
    FUNC21( &db->transforms );

    db->strings = FUNC24( stg, &db->bytes_per_strref );
    if( !db->strings )
        goto end;

    ret = ERROR_SUCCESS;

    FUNC25( &db->hdr );
    FUNC6( stg );
    *pdb = db;

end:
    if( db )
        FUNC26( &db->hdr );
    if( stg )
        FUNC7( stg );

    return ret;
}