
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int db; } ;
struct TYPE_8__ {int hdr; } ;
typedef TYPE_1__ MSIQUERY ;
typedef TYPE_2__ MSIPACKAGE ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_SUCCESS ;
 int ITERATE_Actions ;
 scalar_t__ MSI_IterateRecords (TYPE_1__*,int *,int ,TYPE_2__*) ;
 scalar_t__ MSI_OpenQuery (int ,TYPE_1__**,char const*,int ) ;
 int TRACE (char*,TYPE_2__*,int ) ;
 int debugstr_w (int ) ;
 int msiobj_release (int *) ;

UINT MSI_Sequence( MSIPACKAGE *package, LPCWSTR table )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','`','%','s','`',
         ' ','W','H','E','R','E',' ','`','S','e','q','u','e','n','c','e','`',' ',
         '>',' ','0',' ','O','R','D','E','R',' ','B','Y',' ',
         '`','S','e','q','u','e','n','c','e','`',0};
    MSIQUERY *view;
    UINT r;

    TRACE("%p %s\n", package, debugstr_w(table));

    r = MSI_OpenQuery( package->db, &view, query, table );
    if (r == ERROR_SUCCESS)
    {
        r = MSI_IterateRecords( view, ((void*)0), ITERATE_Actions, package );
        msiobj_release(&view->hdr);
    }
    return r;
}
