
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_7__ {int hdr; int strings; int bytes_per_strref; int transforms; int tables; void* deletefile; scalar_t__ mode; int * storage; int media_transform_disk_id; int media_transform_offset; void* path; } ;
struct TYPE_6__ {int clsid; } ;
typedef TYPE_1__ STATSTG ;
typedef TYPE_2__ MSIDATABASE ;
typedef scalar_t__ LPCWSTR ;
typedef int IStorage ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int CLSID_MsiDatabase ;
 int CLSID_MsiPatch ;
 int CLSID_MsiTransform ;
 int CopyFileW (scalar_t__,scalar_t__,scalar_t__) ;
 int ERR (char*,scalar_t__) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_OPEN_FAILED ;
 int ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int FIXME (char*) ;
 int GetCurrentDirectoryW (int,int *) ;
 int IS_INTMSIDBOPEN (scalar_t__) ;
 int IStorage_AddRef (int *) ;
 int IStorage_Release (int *) ;
 int IStorage_Stat (int *,TYPE_1__*,int ) ;
 int IsEqualGUID (int *,int *) ;
 int MAX_PATH ;
 scalar_t__ MSIDBOPEN_CREATE ;
 scalar_t__ MSIDBOPEN_CREATEDIRECT ;
 scalar_t__ MSIDBOPEN_DIRECT ;
 scalar_t__ MSIDBOPEN_PATCHFILE ;
 scalar_t__ MSIDBOPEN_READONLY ;
 scalar_t__ MSIDBOPEN_TRANSACT ;
 int MSIHANDLETYPE_DATABASE ;
 int MSI_CloseDatabase ;
 int MSI_INITIAL_MEDIA_TRANSFORM_DISKID ;
 int MSI_INITIAL_MEDIA_TRANSFORM_OFFSET ;
 int STATFLAG_NONAME ;
 int STGM_CREATE ;
 int STGM_DIRECT ;
 int STGM_READ ;
 int STGM_READWRITE ;
 int STGM_SHARE_DENY_WRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_TRANSACTED ;
 scalar_t__ SUCCEEDED (int ) ;
 int StgCreateDocfile (scalar_t__,int,int ,int **) ;
 int StgOpenStorage (scalar_t__,int *,int,int *,int ,int **) ;
 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 scalar_t__ TRUE ;
 int WARN (char*,int ,int ) ;
 TYPE_2__* alloc_msiobject (int ,int,int ) ;
 int db_initialize (int *,int *) ;
 scalar_t__ debugstr_guid (int *) ;
 int debugstr_w (scalar_t__) ;
 int enum_stream_names (int *) ;
 int list_init (int *) ;
 int lstrcatW (int *,scalar_t__) ;
 int lstrcpyW (int *,scalar_t__) ;
 int msi ;
 int msi_load_string_table (int *,int *) ;
 int msiobj_addref (int *) ;
 int msiobj_release (int *) ;
 int strchrW (scalar_t__,char) ;
 void* strdupW (scalar_t__) ;
 scalar_t__ szBackSlash ;

UINT MSI_OpenDatabaseW(LPCWSTR szDBPath, LPCWSTR szPersist, MSIDATABASE **pdb)
{
    IStorage *stg = ((void*)0);
    HRESULT r;
    MSIDATABASE *db = ((void*)0);
    UINT ret = ERROR_FUNCTION_FAILED;
    LPCWSTR szMode, save_path;
    STATSTG stat;
    BOOL created = FALSE, patch = FALSE;
    WCHAR path[MAX_PATH];

    TRACE("%s %s\n",debugstr_w(szDBPath),debugstr_w(szPersist) );

    if( !pdb )
        return ERROR_INVALID_PARAMETER;

    if (szPersist - MSIDBOPEN_PATCHFILE <= MSIDBOPEN_CREATEDIRECT)
    {
        TRACE("Database is a patch\n");
        szPersist -= MSIDBOPEN_PATCHFILE;
        patch = TRUE;
    }

    save_path = szDBPath;
    szMode = szPersist;
    if( !IS_INTMSIDBOPEN(szPersist) )
    {
        if (!CopyFileW( szDBPath, szPersist, FALSE ))
            return ERROR_OPEN_FAILED;

        szDBPath = szPersist;
        szPersist = MSIDBOPEN_TRANSACT;
        created = TRUE;
    }

    if( szPersist == MSIDBOPEN_READONLY )
    {
        r = StgOpenStorage( szDBPath, ((void*)0),
              STGM_DIRECT|STGM_READ|STGM_SHARE_DENY_WRITE, ((void*)0), 0, &stg);
    }
    else if( szPersist == MSIDBOPEN_CREATE )
    {
        r = StgCreateDocfile( szDBPath,
              STGM_CREATE|STGM_TRANSACTED|STGM_READWRITE|STGM_SHARE_EXCLUSIVE, 0, &stg );

        if( SUCCEEDED(r) )
            r = db_initialize( stg, patch ? &CLSID_MsiPatch : &CLSID_MsiDatabase );
        created = TRUE;
    }
    else if( szPersist == MSIDBOPEN_CREATEDIRECT )
    {
        r = StgCreateDocfile( szDBPath,
              STGM_CREATE|STGM_DIRECT|STGM_READWRITE|STGM_SHARE_EXCLUSIVE, 0, &stg );

        if( SUCCEEDED(r) )
            r = db_initialize( stg, patch ? &CLSID_MsiPatch : &CLSID_MsiDatabase );
        created = TRUE;
    }
    else if( szPersist == MSIDBOPEN_TRANSACT )
    {
        r = StgOpenStorage( szDBPath, ((void*)0),
              STGM_TRANSACTED|STGM_READWRITE|STGM_SHARE_DENY_WRITE, ((void*)0), 0, &stg);
    }
    else if( szPersist == MSIDBOPEN_DIRECT )
    {
        r = StgOpenStorage( szDBPath, ((void*)0),
              STGM_DIRECT|STGM_READWRITE|STGM_SHARE_EXCLUSIVE, ((void*)0), 0, &stg);
    }
    else
    {
        ERR("unknown flag %p\n",szPersist);
        return ERROR_INVALID_PARAMETER;
    }

    if( FAILED( r ) || !stg )
    {
        WARN("open failed r = %08x for %s\n", r, debugstr_w(szDBPath));
        return ERROR_FUNCTION_FAILED;
    }

    r = IStorage_Stat( stg, &stat, STATFLAG_NONAME );
    if( FAILED( r ) )
    {
        FIXME("Failed to stat storage\n");
        goto end;
    }

    if ( !IsEqualGUID( &stat.clsid, &CLSID_MsiDatabase ) &&
         !IsEqualGUID( &stat.clsid, &CLSID_MsiPatch ) &&
         !IsEqualGUID( &stat.clsid, &CLSID_MsiTransform ) )
    {
        ERR("storage GUID is not a MSI database GUID %s\n",
             debugstr_guid(&stat.clsid) );
        goto end;
    }

    if ( patch && !IsEqualGUID( &stat.clsid, &CLSID_MsiPatch ) )
    {
        ERR("storage GUID is not the MSI patch GUID %s\n",
             debugstr_guid(&stat.clsid) );
        ret = ERROR_OPEN_FAILED;
        goto end;
    }

    db = alloc_msiobject( MSIHANDLETYPE_DATABASE, sizeof (MSIDATABASE),
                              MSI_CloseDatabase );
    if( !db )
    {
        FIXME("Failed to allocate a handle\n");
        goto end;
    }

    if (!strchrW( save_path, '\\' ))
    {
        GetCurrentDirectoryW( MAX_PATH, path );
        lstrcatW( path, szBackSlash );
        lstrcatW( path, save_path );
    }
    else
        lstrcpyW( path, save_path );

    db->path = strdupW( path );
    db->media_transform_offset = MSI_INITIAL_MEDIA_TRANSFORM_OFFSET;
    db->media_transform_disk_id = MSI_INITIAL_MEDIA_TRANSFORM_DISKID;

    if( TRACE_ON( msi ) )
        enum_stream_names( stg );

    db->storage = stg;
    db->mode = szMode;
    if (created)
        db->deletefile = strdupW( szDBPath );
    list_init( &db->tables );
    list_init( &db->transforms );

    db->strings = msi_load_string_table( stg, &db->bytes_per_strref );
    if( !db->strings )
        goto end;

    ret = ERROR_SUCCESS;

    msiobj_addref( &db->hdr );
    IStorage_AddRef( stg );
    *pdb = db;

end:
    if( db )
        msiobj_release( &db->hdr );
    if( stg )
        IStorage_Release( stg );

    return ret;
}
