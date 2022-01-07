
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_10__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_35__ {int path; int storage; int hdr; } ;
struct TYPE_34__ {int* langids; TYPE_10__* db; scalar_t__ num_langids; int log_file; int hdr; int Context; int ProductCode; int delete_on_close; void* localfile; } ;
struct TYPE_33__ {int hdr; } ;
struct TYPE_32__ {int hdr; } ;
struct TYPE_31__ {int strings; } ;
typedef TYPE_1__ MSISUMMARYINFO ;
typedef TYPE_2__ MSIRECORD ;
typedef TYPE_3__ MSIPACKAGE ;
typedef int MSIHANDLE ;
typedef TYPE_4__ MSIDATABASE ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef int IWineMsiRemoteDatabase ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CopyFileW (char*,char*,int ) ;
 int CreateFileW (scalar_t__,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileW (char*) ;
 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_INSTALL_PACKAGE_INVALID ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_WRITE ;
 int GENERIC_WRITE ;
 int GUID_SIZE ;
 scalar_t__ GetFileAttributesW (char*) ;
 scalar_t__ GetLastError () ;
 int INSTALLMESSAGE_COMMONDATA ;
 int INSTALLMESSAGE_INFO ;
 int INSTALLMESSAGE_INITIALIZE ;
 int INSTALLPROPERTY_PRODUCTNAMEW ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int IWineMsiRemoteDatabase_Release (int *) ;
 int MAX_PATH ;
 int MB_ICONHAND ;
 int MSIDBOPEN_TRANSACT ;
 int MSIERR_INFO_LOGGINGSTART ;
 int MSIHANDLETYPE_DATABASE ;
 int MSIPATCHSTATE_APPLIED ;
 TYPE_3__* MSI_CreatePackage (TYPE_4__*,char*) ;
 TYPE_2__* MSI_CreateRecord (int) ;
 scalar_t__ MSI_OpenDatabaseW (char*,int ,TYPE_4__**) ;
 int MSI_ProcessMessage (TYPE_3__*,int,TYPE_2__*) ;
 int MSI_ProcessMessageVerbatim (TYPE_3__*,int,TYPE_2__*) ;
 int MSI_RecordSetInteger (TYPE_2__*,int,int) ;
 int MSI_RecordSetStringW (TYPE_2__*,int,char*) ;
 scalar_t__ MsiEnumPatchesExW (int ,int *,int ,int ,scalar_t__,char*,int *,int *,int *,int *) ;
 int OPEN_EXISTING ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 int URLIS_URL ;
 scalar_t__ UrlIsW (char*,int ) ;
 int WARN (char*,...) ;
 int atoiW (char*) ;
 int debugstr_w (char*) ;
 scalar_t__ get_local_package (char*,char*) ;
 scalar_t__ gszLogFile ;
 int msi_adjust_privilege_properties (TYPE_3__*) ;
 scalar_t__ msi_apply_registered_patch (TYPE_3__*,char*) ;
 scalar_t__ msi_create_empty_local_file (char*,char const*) ;
 scalar_t__ msi_download_file (char*,char*) ;
 char* msi_dup_property (TYPE_10__*,int ) ;
 int msi_free (char*) ;
 scalar_t__ msi_get_db_suminfo (TYPE_4__*,int ,TYPE_1__**) ;
 char* msi_get_error_message (TYPE_10__*,int ) ;
 scalar_t__ msi_get_remote (int ) ;
 int msi_get_string_table_codepage (int ) ;
 scalar_t__ msi_get_suminfo (int ,int ,TYPE_1__**) ;
 int msi_set_context (TYPE_3__*) ;
 scalar_t__ msi_set_original_database_property (TYPE_10__*,char*) ;
 int msi_set_property (TYPE_10__*,int ,int ,int) ;
 TYPE_4__* msihandle2msiinfo (int ,int ) ;
 int msiobj_release (int *) ;
 scalar_t__ parse_suminfo (TYPE_1__*,TYPE_3__*) ;
 int set_installed_prop (TYPE_3__*) ;
 void* strdupW (char*) ;
 char* strrchrW (char*,char) ;
 int szDatabase ;
 scalar_t__ validate_package (TYPE_3__*) ;

UINT MSI_OpenPackageW(LPCWSTR szPackage, MSIPACKAGE **pPackage)
{
    static const WCHAR dotmsi[] = {'.','m','s','i',0};
    MSIDATABASE *db;
    MSIPACKAGE *package;
    MSIHANDLE handle;
    MSIRECORD *data_row, *info_row;
    LPWSTR ptr, base_url = ((void*)0);
    UINT r;
    WCHAR localfile[MAX_PATH], cachefile[MAX_PATH];
    LPCWSTR file = szPackage;
    DWORD index = 0;
    MSISUMMARYINFO *si;
    BOOL delete_on_close = FALSE;
    LPWSTR productname;
    WCHAR *info_template;

    TRACE("%s %p\n", debugstr_w(szPackage), pPackage);

    MSI_ProcessMessage(((void*)0), INSTALLMESSAGE_INITIALIZE, 0);

    localfile[0] = 0;
    if( szPackage[0] == '#' )
    {
        handle = atoiW(&szPackage[1]);
        db = msihandle2msiinfo( handle, MSIHANDLETYPE_DATABASE );
        if( !db )
        {
            IWineMsiRemoteDatabase *remote_database;

            remote_database = (IWineMsiRemoteDatabase *)msi_get_remote( handle );
            if ( !remote_database )
                return ERROR_INVALID_HANDLE;

            IWineMsiRemoteDatabase_Release( remote_database );
            WARN("MsiOpenPackage not allowed during a custom action!\n");

            return ERROR_FUNCTION_FAILED;
        }
    }
    else
    {
        if ( UrlIsW( szPackage, URLIS_URL ) )
        {
            r = msi_download_file( szPackage, cachefile );
            if (r != ERROR_SUCCESS)
                return r;

            file = cachefile;

            base_url = strdupW( szPackage );
            if (!base_url)
                return ERROR_OUTOFMEMORY;

            ptr = strrchrW( base_url, '/' );
            if (ptr) *(ptr + 1) = '\0';
        }
        r = get_local_package( file, localfile );
        if (r != ERROR_SUCCESS || GetFileAttributesW( localfile ) == INVALID_FILE_ATTRIBUTES)
        {
            r = msi_create_empty_local_file( localfile, dotmsi );
            if (r != ERROR_SUCCESS)
            {
                msi_free ( base_url );
                return r;
            }

            if (!CopyFileW( file, localfile, FALSE ))
            {
                r = GetLastError();
                WARN("unable to copy package %s to %s (%u)\n", debugstr_w(file), debugstr_w(localfile), r);
                DeleteFileW( localfile );
                msi_free ( base_url );
                return r;
            }
            delete_on_close = TRUE;
        }
        TRACE("opening package %s\n", debugstr_w( localfile ));
        r = MSI_OpenDatabaseW( localfile, MSIDBOPEN_TRANSACT, &db );
        if (r != ERROR_SUCCESS)
        {
            msi_free ( base_url );
            return r;
        }
    }
    package = MSI_CreatePackage( db, base_url );
    msi_free( base_url );
    msiobj_release( &db->hdr );
    if (!package) return ERROR_INSTALL_PACKAGE_INVALID;
    package->localfile = strdupW( localfile );
    package->delete_on_close = delete_on_close;

    r = msi_get_suminfo( db->storage, 0, &si );
    if (r != ERROR_SUCCESS)
    {
        r = msi_get_db_suminfo( db, 0, &si );
        if (r != ERROR_SUCCESS)
        {
            WARN("failed to load summary info\n");
            msiobj_release( &package->hdr );
            return ERROR_INSTALL_PACKAGE_INVALID;
        }
    }
    r = parse_suminfo( si, package );
    msiobj_release( &si->hdr );
    if (r != ERROR_SUCCESS)
    {
        WARN("failed to parse summary info %u\n", r);
        msiobj_release( &package->hdr );
        return r;
    }
    r = validate_package( package );
    if (r != ERROR_SUCCESS)
    {
        msiobj_release( &package->hdr );
        return r;
    }
    msi_set_property( package->db, szDatabase, db->path, -1 );
    set_installed_prop( package );
    msi_set_context( package );

    while (1)
    {
        WCHAR patch_code[GUID_SIZE];
        r = MsiEnumPatchesExW( package->ProductCode, ((void*)0), package->Context,
                               MSIPATCHSTATE_APPLIED, index, patch_code, ((void*)0), ((void*)0), ((void*)0), ((void*)0) );
        if (r != ERROR_SUCCESS)
            break;

        TRACE("found registered patch %s\n", debugstr_w(patch_code));

        r = msi_apply_registered_patch( package, patch_code );
        if (r != ERROR_SUCCESS)
        {
            ERR("registered patch failed to apply %u\n", r);
            msiobj_release( &package->hdr );
            return r;
        }
        index++;
    }
    if (index) msi_adjust_privilege_properties( package );

    r = msi_set_original_database_property( package->db, szPackage );
    if (r != ERROR_SUCCESS)
    {
        msiobj_release( &package->hdr );
        return r;
    }
    if (gszLogFile)
        package->log_file = CreateFileW( gszLogFile, GENERIC_WRITE, FILE_SHARE_WRITE, ((void*)0),
                                         OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0) );


    data_row = MSI_CreateRecord(3);
    if (!data_row)
 return ERROR_OUTOFMEMORY;
    MSI_RecordSetStringW(data_row, 0, ((void*)0));
    MSI_RecordSetInteger(data_row, 1, 0);
    MSI_RecordSetInteger(data_row, 2, package->num_langids ? package->langids[0] : 0);
    MSI_RecordSetInteger(data_row, 3, msi_get_string_table_codepage(package->db->strings));
    MSI_ProcessMessageVerbatim(package, INSTALLMESSAGE_COMMONDATA, data_row);

    info_row = MSI_CreateRecord(0);
    if (!info_row)
    {
 msiobj_release(&data_row->hdr);
 return ERROR_OUTOFMEMORY;
    }
    info_template = msi_get_error_message(package->db, MSIERR_INFO_LOGGINGSTART);
    MSI_RecordSetStringW(info_row, 0, info_template);
    msi_free(info_template);
    MSI_ProcessMessage(package, INSTALLMESSAGE_INFO|MB_ICONHAND, info_row);

    MSI_ProcessMessage(package, INSTALLMESSAGE_COMMONDATA, data_row);

    productname = msi_dup_property(package->db, INSTALLPROPERTY_PRODUCTNAMEW);
    MSI_RecordSetInteger(data_row, 1, 1);
    MSI_RecordSetStringW(data_row, 2, productname);
    MSI_RecordSetStringW(data_row, 3, ((void*)0));
    MSI_ProcessMessage(package, INSTALLMESSAGE_COMMONDATA, data_row);

    msi_free(productname);
    msiobj_release(&info_row->hdr);
    msiobj_release(&data_row->hdr);

    *pPackage = package;
    return ERROR_SUCCESS;
}
