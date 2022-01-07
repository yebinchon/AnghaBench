
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int db; int components; } ;
struct TYPE_8__ {int hdr; } ;
typedef TYPE_1__ MSIQUERY ;
typedef TYPE_2__ MSIPACKAGE ;


 int ERR (char*) ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MSI_DatabaseOpenViewW (int ,char const*,TYPE_1__**) ;
 scalar_t__ MSI_IterateRecords (TYPE_1__*,int *,int ,TYPE_2__*) ;
 int list_empty (int *) ;
 int load_component ;
 int msi_init_assembly_caches (TYPE_2__*) ;
 int msiobj_release (int *) ;

UINT msi_load_all_components( MSIPACKAGE *package )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','C','o','m','p','o','n','e','n','t','`',0};
    MSIQUERY *view;
    UINT r;

    if (!list_empty(&package->components))
        return ERROR_SUCCESS;

    r = MSI_DatabaseOpenViewW( package->db, query, &view );
    if (r != ERROR_SUCCESS)
        return r;

    if (!msi_init_assembly_caches( package ))
    {
        ERR("can't initialize assembly caches\n");
        msiobj_release( &view->hdr );
        return ERROR_FUNCTION_FAILED;
    }

    r = MSI_IterateRecords(view, ((void*)0), load_component, package);
    msiobj_release(&view->hdr);
    return r;
}
