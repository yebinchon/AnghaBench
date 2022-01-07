
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int db; } ;
struct TYPE_7__ {int hdr; } ;
typedef TYPE_1__ MSIQUERY ;
typedef TYPE_2__ MSIPACKAGE ;


 scalar_t__ ERROR_SUCCESS ;
 int ITERATE_RemoveRegistryValuesOnInstall ;
 int ITERATE_RemoveRegistryValuesOnUninstall ;
 scalar_t__ MSI_DatabaseOpenViewW (int ,char const*,TYPE_1__**) ;
 scalar_t__ MSI_IterateRecords (TYPE_1__*,int *,int ,TYPE_2__*) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT ACTION_RemoveRegistryValues( MSIPACKAGE *package )
{
    static const WCHAR registry_query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','R','e','g','i','s','t','r','y','`',0};
    static const WCHAR remove_registry_query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','R','e','m','o','v','e','R','e','g','i','s','t','r','y','`',0};
    MSIQUERY *view;
    UINT rc;

    rc = MSI_DatabaseOpenViewW( package->db, registry_query, &view );
    if (rc == ERROR_SUCCESS)
    {
        rc = MSI_IterateRecords( view, ((void*)0), ITERATE_RemoveRegistryValuesOnUninstall, package );
        msiobj_release( &view->hdr );
        if (rc != ERROR_SUCCESS)
            return rc;
    }
    rc = MSI_DatabaseOpenViewW( package->db, remove_registry_query, &view );
    if (rc == ERROR_SUCCESS)
    {
        rc = MSI_IterateRecords( view, ((void*)0), ITERATE_RemoveRegistryValuesOnInstall, package );
        msiobj_release( &view->hdr );
        if (rc != ERROR_SUCCESS)
            return rc;
    }
    return ERROR_SUCCESS;
}
