
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int db; scalar_t__ ExecuteSequenceRun; } ;
struct TYPE_7__ {int hdr; } ;
typedef TYPE_1__ MSIQUERY ;
typedef TYPE_2__ MSIPACKAGE ;


 scalar_t__ ERROR_SUCCESS ;
 int ITERATE_Actions ;
 scalar_t__ MSI_IterateRecords (TYPE_1__*,int *,int ,TYPE_2__*) ;
 scalar_t__ MSI_OpenQuery (int ,TYPE_1__**,char const*) ;
 int TRACE (char*) ;
 scalar_t__ TRUE ;
 int msi_set_property (int ,int ,int *,int) ;
 int msiobj_release (int *) ;
 int szSourceDir ;

__attribute__((used)) static UINT ACTION_ProcessExecSequence(MSIPACKAGE *package)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ', 'F','R','O','M',' ',
        '`','I','n','s','t','a','l','l','E','x','e','c','u','t','e',
        'S','e','q','u','e','n','c','e','`',' ', 'W','H','E','R','E',' ',
        '`','S','e','q','u','e','n','c','e','`',' ', '>',' ','0',' ',
        'O','R','D','E','R',' ', 'B','Y',' ','`','S','e','q','u','e','n','c','e','`',0};
    MSIQUERY *view;
    UINT rc;

    if (package->ExecuteSequenceRun)
    {
        TRACE("Execute Sequence already Run\n");
        return ERROR_SUCCESS;
    }

    package->ExecuteSequenceRun = TRUE;

    rc = MSI_OpenQuery(package->db, &view, query);
    if (rc == ERROR_SUCCESS)
    {
        TRACE("Running the actions\n");

        msi_set_property( package->db, szSourceDir, ((void*)0), -1 );
        rc = MSI_IterateRecords(view, ((void*)0), ITERATE_Actions, package);
        msiobj_release(&view->hdr);
    }
    return rc;
}
