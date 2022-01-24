#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_10__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_35__ {int /*<<< orphan*/  path; int /*<<< orphan*/  storage; int /*<<< orphan*/  hdr; } ;
struct TYPE_34__ {int* langids; TYPE_10__* db; scalar_t__ num_langids; int /*<<< orphan*/  log_file; int /*<<< orphan*/  hdr; int /*<<< orphan*/  Context; int /*<<< orphan*/  ProductCode; int /*<<< orphan*/  delete_on_close; void* localfile; } ;
struct TYPE_33__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_32__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_31__ {int /*<<< orphan*/  strings; } ;
typedef  TYPE_1__ MSISUMMARYINFO ;
typedef  TYPE_2__ MSIRECORD ;
typedef  TYPE_3__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  TYPE_4__ MSIDATABASE ;
typedef  char* LPWSTR ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  IWineMsiRemoteDatabase ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_INSTALL_PACKAGE_INVALID ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int GUID_SIZE ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 () ; 
 int INSTALLMESSAGE_COMMONDATA ; 
 int INSTALLMESSAGE_INFO ; 
 int INSTALLMESSAGE_INITIALIZE ; 
 int /*<<< orphan*/  INSTALLPROPERTY_PRODUCTNAMEW ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int MB_ICONHAND ; 
 int /*<<< orphan*/  MSIDBOPEN_TRANSACT ; 
 int /*<<< orphan*/  MSIERR_INFO_LOGGINGSTART ; 
 int /*<<< orphan*/  MSIHANDLETYPE_DATABASE ; 
 int /*<<< orphan*/  MSIPATCHSTATE_APPLIED ; 
 TYPE_3__* FUNC7 (TYPE_4__*,char*) ; 
 TYPE_2__* FUNC8 (int) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  URLIS_URL ; 
 scalar_t__ FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 scalar_t__ gszLogFile ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 scalar_t__ FUNC22 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC23 (char*,char const*) ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 char* FUNC25 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 scalar_t__ FUNC27 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 char* FUNC28 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_3__*) ; 
 scalar_t__ FUNC33 (TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC37 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_3__*) ; 
 void* FUNC39 (char*) ; 
 char* FUNC40 (char*,char) ; 
 int /*<<< orphan*/  szDatabase ; 
 scalar_t__ FUNC41 (TYPE_3__*) ; 

UINT FUNC42(LPCWSTR szPackage, MSIPACKAGE **pPackage)
{
    static const WCHAR dotmsi[] = {'.','m','s','i',0};
    MSIDATABASE *db;
    MSIPACKAGE *package;
    MSIHANDLE handle;
    MSIRECORD *data_row, *info_row;
    LPWSTR ptr, base_url = NULL;
    UINT r;
    WCHAR localfile[MAX_PATH], cachefile[MAX_PATH];
    LPCWSTR file = szPackage;
    DWORD index = 0;
    MSISUMMARYINFO *si;
    BOOL delete_on_close = FALSE;
    LPWSTR productname;
    WCHAR *info_template;

    FUNC15("%s %p\n", FUNC19(szPackage), pPackage);

    FUNC10(NULL, INSTALLMESSAGE_INITIALIZE, 0);

    localfile[0] = 0;
    if( szPackage[0] == '#' )
    {
        handle = FUNC18(&szPackage[1]);
        db = FUNC35( handle, MSIHANDLETYPE_DATABASE );
        if( !db )
        {
            IWineMsiRemoteDatabase *remote_database;

            remote_database = (IWineMsiRemoteDatabase *)FUNC29( handle );
            if ( !remote_database )
                return ERROR_INVALID_HANDLE;

            FUNC6( remote_database );
            FUNC17("MsiOpenPackage not allowed during a custom action!\n");

            return ERROR_FUNCTION_FAILED;
        }
    }
    else
    {
        if ( FUNC16( szPackage, URLIS_URL ) )
        {
            r = FUNC24( szPackage, cachefile );
            if (r != ERROR_SUCCESS)
                return r;

            file = cachefile;

            base_url = FUNC39( szPackage );
            if (!base_url)
                return ERROR_OUTOFMEMORY;

            ptr = FUNC40( base_url, '/' );
            if (ptr) *(ptr + 1) = '\0';
        }
        r = FUNC20( file, localfile );
        if (r != ERROR_SUCCESS || FUNC4( localfile ) == INVALID_FILE_ATTRIBUTES)
        {
            r = FUNC23( localfile, dotmsi );
            if (r != ERROR_SUCCESS)
            {
                FUNC26 ( base_url );
                return r;
            }

            if (!FUNC0( file, localfile, FALSE ))
            {
                r = FUNC5();
                FUNC17("unable to copy package %s to %s (%u)\n", FUNC19(file), FUNC19(localfile), r);
                FUNC2( localfile );
                FUNC26 ( base_url );
                return r;
            }
            delete_on_close = TRUE;
        }
        FUNC15("opening package %s\n", FUNC19( localfile ));
        r = FUNC9( localfile, MSIDBOPEN_TRANSACT, &db );
        if (r != ERROR_SUCCESS)
        {
            FUNC26 ( base_url );
            return r;
        }
    }
    package = FUNC7( db, base_url );
    FUNC26( base_url );
    FUNC36( &db->hdr );
    if (!package) return ERROR_INSTALL_PACKAGE_INVALID;
    package->localfile = FUNC39( localfile );
    package->delete_on_close = delete_on_close;

    r = FUNC31( db->storage, 0, &si );
    if (r != ERROR_SUCCESS)
    {
        r = FUNC27( db, 0, &si );
        if (r != ERROR_SUCCESS)
        {
            FUNC17("failed to load summary info\n");
            FUNC36( &package->hdr );
            return ERROR_INSTALL_PACKAGE_INVALID;
        }
    }
    r = FUNC37( si, package );
    FUNC36( &si->hdr );
    if (r != ERROR_SUCCESS)
    {
        FUNC17("failed to parse summary info %u\n", r);
        FUNC36( &package->hdr );
        return r;
    }
    r = FUNC41( package );
    if (r != ERROR_SUCCESS)
    {
        FUNC36( &package->hdr );
        return r;
    }
    FUNC34( package->db, szDatabase, db->path, -1 );
    FUNC38( package );
    FUNC32( package );

    while (1)
    {
        WCHAR patch_code[GUID_SIZE];
        r = FUNC14( package->ProductCode, NULL, package->Context,
                               MSIPATCHSTATE_APPLIED, index, patch_code, NULL, NULL, NULL, NULL );
        if (r != ERROR_SUCCESS)
            break;

        FUNC15("found registered patch %s\n", FUNC19(patch_code));

        r = FUNC22( package, patch_code );
        if (r != ERROR_SUCCESS)
        {
            FUNC3("registered patch failed to apply %u\n", r);
            FUNC36( &package->hdr );
            return r;
        }
        index++;
    }
    if (index) FUNC21( package );

    r = FUNC33( package->db, szPackage );
    if (r != ERROR_SUCCESS)
    {
        FUNC36( &package->hdr );
        return r;
    }
    if (gszLogFile)
        package->log_file = FUNC1( gszLogFile, GENERIC_WRITE, FILE_SHARE_WRITE, NULL,
                                         OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL );

    /* FIXME: when should these messages be sent? */
    data_row = FUNC8(3);
    if (!data_row)
	return ERROR_OUTOFMEMORY;
    FUNC13(data_row, 0, NULL);
    FUNC12(data_row, 1, 0);
    FUNC12(data_row, 2, package->num_langids ? package->langids[0] : 0);
    FUNC12(data_row, 3, FUNC30(package->db->strings));
    FUNC11(package, INSTALLMESSAGE_COMMONDATA, data_row);

    info_row = FUNC8(0);
    if (!info_row)
    {
	FUNC36(&data_row->hdr);
	return ERROR_OUTOFMEMORY;
    }
    info_template = FUNC28(package->db, MSIERR_INFO_LOGGINGSTART);
    FUNC13(info_row, 0, info_template);
    FUNC26(info_template);
    FUNC10(package, INSTALLMESSAGE_INFO|MB_ICONHAND, info_row);

    FUNC10(package, INSTALLMESSAGE_COMMONDATA, data_row);

    productname = FUNC25(package->db, INSTALLPROPERTY_PRODUCTNAMEW);
    FUNC12(data_row, 1, 1);
    FUNC13(data_row, 2, productname);
    FUNC13(data_row, 3, NULL);
    FUNC10(package, INSTALLMESSAGE_COMMONDATA, data_row);

    FUNC26(productname);
    FUNC36(&info_row->hdr);
    FUNC36(&data_row->hdr);

    *pPackage = package;
    return ERROR_SUCCESS;
}