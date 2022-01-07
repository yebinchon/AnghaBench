
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_14__ {int persistent; int Directory; } ;
struct TYPE_13__ {int db; } ;
struct TYPE_12__ {int hdr; } ;
struct TYPE_11__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIQUERY ;
typedef TYPE_3__ MSIPACKAGE ;
typedef TYPE_4__ MSIFOLDER ;


 int ERROR_SUCCESS ;
 int FALSE ;
 int MSI_OpenQuery (int ,TYPE_2__**,char const*,int ) ;
 int MSI_ViewExecute (TYPE_2__*,int *) ;
 int MSI_ViewFetch (TYPE_2__*,TYPE_1__**) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT load_folder_persistence( MSIPACKAGE *package, MSIFOLDER *folder )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','C','r','e','a','t','e','F','o','l','d','e','r','`',' ','W','H','E','R','E',' ',
        '`','D','i','r','e','c','t','o','r','y','_','`',' ','=','\'','%','s','\'',0};
    MSIQUERY *view;

    folder->persistent = FALSE;
    if (!MSI_OpenQuery( package->db, &view, query, folder->Directory ))
    {
        if (!MSI_ViewExecute( view, ((void*)0) ))
        {
            MSIRECORD *rec;
            if (!MSI_ViewFetch( view, &rec ))
            {
                TRACE("directory %s is persistent\n", debugstr_w(folder->Directory));
                folder->persistent = TRUE;
                msiobj_release( &rec->hdr );
            }
        }
        msiobj_release( &view->hdr );
    }
    return ERROR_SUCCESS;
}
