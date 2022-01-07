
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
 int ITERATE_CCPSearch ;
 scalar_t__ MSI_IterateRecords (TYPE_1__*,int *,int ,TYPE_2__*) ;
 scalar_t__ MSI_OpenQuery (int ,TYPE_1__**,char const*) ;
 int TRACE (char*) ;
 scalar_t__ msi_action_is_unique (TYPE_2__*,int ) ;
 int msi_register_unique_action (TYPE_2__*,int ) ;
 int msiobj_release (int *) ;
 int szCCPSearch ;

UINT ACTION_CCPSearch(MSIPACKAGE *package)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        'C','C','P','S','e','a','r','c','h',0};
    MSIQUERY *view;
    UINT r;

    if (msi_action_is_unique(package, szCCPSearch))
    {
        TRACE("Skipping AppSearch action: already done in UI sequence\n");
        return ERROR_SUCCESS;
    }
    else
        msi_register_unique_action(package, szCCPSearch);

    r = MSI_OpenQuery(package->db, &view, query);
    if (r != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    r = MSI_IterateRecords(view, ((void*)0), ITERATE_CCPSearch, package);
    msiobj_release(&view->hdr);
    return r;
}
