
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {int hdr; int storage; } ;
struct TYPE_13__ {void* localfile; void* filename; int registered; } ;
struct TYPE_12__ {int hdr; } ;
typedef TYPE_1__ MSISUMMARYINFO ;
typedef TYPE_2__ MSIPATCHINFO ;
typedef int MSIPACKAGE ;
typedef TYPE_3__ MSIDATABASE ;


 int DeleteFileW (void*) ;
 int ERR (char*,int ) ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int MAX_PATH ;
 scalar_t__ MSIDBOPEN_PATCHFILE ;
 scalar_t__ MSIDBOPEN_READONLY ;
 scalar_t__ MSI_OpenDatabaseW (char const*,scalar_t__,TYPE_3__**) ;
 int TRACE (char*,...) ;
 int WARN (char*,scalar_t__) ;
 int debugstr_w (char const*) ;
 scalar_t__ msi_apply_patch_db (int *,TYPE_3__*,TYPE_2__*) ;
 scalar_t__ msi_check_patch_applicable (int *,TYPE_1__*) ;
 scalar_t__ msi_create_empty_local_file (char*,char const*) ;
 int msi_free_patchinfo (TYPE_2__*) ;
 scalar_t__ msi_get_suminfo (int ,int ,TYPE_1__**) ;
 scalar_t__ msi_parse_patch_summary (TYPE_1__*,TYPE_2__**) ;
 int msiobj_release (int *) ;
 void* strdupW (char const*) ;

__attribute__((used)) static UINT msi_apply_patch_package( MSIPACKAGE *package, const WCHAR *file )
{
    static const WCHAR dotmsp[] = {'.','m','s','p',0};
    MSIDATABASE *patch_db = ((void*)0);
    WCHAR localfile[MAX_PATH];
    MSISUMMARYINFO *si;
    MSIPATCHINFO *patch = ((void*)0);
    UINT r;

    TRACE("%p, %s\n", package, debugstr_w(file));

    r = MSI_OpenDatabaseW( file, MSIDBOPEN_READONLY + MSIDBOPEN_PATCHFILE, &patch_db );
    if (r != ERROR_SUCCESS)
    {
        ERR("failed to open patch collection %s\n", debugstr_w( file ) );
        return r;
    }
    r = msi_get_suminfo( patch_db->storage, 0, &si );
    if (r != ERROR_SUCCESS)
    {
        msiobj_release( &patch_db->hdr );
        return r;
    }
    r = msi_check_patch_applicable( package, si );
    if (r != ERROR_SUCCESS)
    {
        TRACE("patch not applicable\n");
        r = ERROR_SUCCESS;
        goto done;
    }
    r = msi_parse_patch_summary( si, &patch );
    if ( r != ERROR_SUCCESS )
        goto done;

    r = msi_create_empty_local_file( localfile, dotmsp );
    if ( r != ERROR_SUCCESS )
        goto done;

    r = ERROR_OUTOFMEMORY;
    patch->registered = FALSE;
    if (!(patch->filename = strdupW( file ))) goto done;
    if (!(patch->localfile = strdupW( localfile ))) goto done;

    r = msi_apply_patch_db( package, patch_db, patch );
    if (r != ERROR_SUCCESS) WARN("patch failed to apply %u\n", r);

done:
    msiobj_release( &si->hdr );
    msiobj_release( &patch_db->hdr );
    if (patch && r != ERROR_SUCCESS)
    {
        DeleteFileW( patch->localfile );
        msi_free_patchinfo( patch );
    }
    return r;
}
