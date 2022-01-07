
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_16__ {int path; int hdr; } ;
struct TYPE_15__ {int WordCount; int ui_level; int log_file; int hdr; TYPE_2__* db; int ProductCode; void* BaseURL; void* PackagePath; int LastActionResult; int * LastActionTemplate; int * LastAction; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIDATABASE ;
typedef int LPCWSTR ;


 int ERROR_SUCCESS ;
 int INSTALLUILEVEL_MASK ;
 int INVALID_HANDLE_VALUE ;
 int MSI_NULL_INTEGER ;
 int TRACE (char*,TYPE_2__*) ;
 int create_temp_property_table (TYPE_1__*) ;
 int gUILevel ;
 int msi_adjust_privilege_properties (TYPE_1__*) ;
 TYPE_1__* msi_alloc_package () ;
 int msi_clone_properties (TYPE_2__*) ;
 int msi_dup_property (TYPE_2__*,int ) ;
 int msi_load_admin_properties (TYPE_1__*) ;
 int msi_load_suminfo_properties (TYPE_1__*) ;
 int msi_set_property (TYPE_2__*,int ,char*,int) ;
 int msidbSumInfoSourceTypeAdminImage ;
 int msiobj_addref (int *) ;
 int msiobj_release (int *) ;
 int set_installer_properties (TYPE_1__*) ;
 int sprintfW (char*,char const*,int) ;
 void* strdupW (int ) ;
 int szProductCode ;
 int szUILevel ;

MSIPACKAGE *MSI_CreatePackage( MSIDATABASE *db, LPCWSTR base_url )
{
    static const WCHAR fmtW[] = {'%','u',0};
    MSIPACKAGE *package;
    WCHAR uilevel[11];
    int len;
    UINT r;

    TRACE("%p\n", db);

    package = msi_alloc_package();
    if (package)
    {
        msiobj_addref( &db->hdr );
        package->db = db;

        package->LastAction = ((void*)0);
        package->LastActionTemplate = ((void*)0);
        package->LastActionResult = MSI_NULL_INTEGER;
        package->WordCount = 0;
        package->PackagePath = strdupW( db->path );
        package->BaseURL = strdupW( base_url );

        create_temp_property_table( package );
        msi_clone_properties( package->db );
        msi_adjust_privilege_properties( package );

        package->ProductCode = msi_dup_property( package->db, szProductCode );

        set_installer_properties( package );

        package->ui_level = gUILevel;
        len = sprintfW( uilevel, fmtW, gUILevel & INSTALLUILEVEL_MASK );
        msi_set_property( package->db, szUILevel, uilevel, len );

        r = msi_load_suminfo_properties( package );
        if (r != ERROR_SUCCESS)
        {
            msiobj_release( &package->hdr );
            return ((void*)0);
        }

        if (package->WordCount & msidbSumInfoSourceTypeAdminImage)
            msi_load_admin_properties( package );

        package->log_file = INVALID_HANDLE_VALUE;
    }
    return package;
}
