
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int db; int filepatches; } ;
struct TYPE_7__ {int hdr; } ;
typedef TYPE_1__ MSIQUERY ;
typedef TYPE_2__ MSIPACKAGE ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MSI_DatabaseOpenViewW (int ,char const*,TYPE_1__**) ;
 scalar_t__ MSI_IterateRecords (TYPE_1__*,int *,int ,TYPE_2__*) ;
 int list_empty (int *) ;
 int load_patch ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT load_all_patches(MSIPACKAGE *package)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','P','a','t','c','h','`',' ','O','R','D','E','R',' ','B','Y',' ',
        '`','S','e','q','u','e','n','c','e','`',0};
    MSIQUERY *view;
    UINT rc;

    if (!list_empty(&package->filepatches))
        return ERROR_SUCCESS;

    rc = MSI_DatabaseOpenViewW(package->db, query, &view);
    if (rc != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    rc = MSI_IterateRecords(view, ((void*)0), load_patch, package);
    msiobj_release(&view->hdr);
    return rc;
}
