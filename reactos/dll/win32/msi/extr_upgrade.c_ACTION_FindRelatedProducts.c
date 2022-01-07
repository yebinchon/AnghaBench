
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int db; } ;
struct TYPE_9__ {int hdr; } ;
typedef TYPE_1__ MSIQUERY ;
typedef TYPE_2__ MSIPACKAGE ;


 scalar_t__ ERROR_SUCCESS ;
 int ITERATE_FindRelatedProducts ;
 scalar_t__ MSI_DatabaseOpenViewW (int ,char const*,TYPE_1__**) ;
 scalar_t__ MSI_IterateRecords (TYPE_1__*,int *,int ,TYPE_2__*) ;
 int TRACE (char*) ;
 scalar_t__ msi_action_is_unique (TYPE_2__*,int ) ;
 scalar_t__ msi_get_property_int (int ,int ,int ) ;
 int msi_register_unique_action (TYPE_2__*,int ) ;
 int msiobj_release (int *) ;
 int szFindRelatedProducts ;
 int szInstalled ;

UINT ACTION_FindRelatedProducts(MSIPACKAGE *package)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','U','p','g','r','a','d','e','`',0};
    MSIQUERY *view;
    UINT rc;

    if (msi_get_property_int(package->db, szInstalled, 0))
    {
        TRACE("Skipping FindRelatedProducts action: product already installed\n");
        return ERROR_SUCCESS;
    }
    if (msi_action_is_unique(package, szFindRelatedProducts))
    {
        TRACE("Skipping FindRelatedProducts action: already done in UI sequence\n");
        return ERROR_SUCCESS;
    }
    else
        msi_register_unique_action(package, szFindRelatedProducts);

    rc = MSI_DatabaseOpenViewW(package->db, query, &view);
    if (rc != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    rc = MSI_IterateRecords(view, ((void*)0), ITERATE_FindRelatedProducts, package);
    msiobj_release(&view->hdr);
    return rc;
}
