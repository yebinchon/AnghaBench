
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {int dwFileHashInfoSize; void** dwData; } ;
struct TYPE_17__ {TYPE_1__ hash; int File; } ;
struct TYPE_16__ {int db; } ;
struct TYPE_15__ {int hdr; } ;
struct TYPE_14__ {int hdr; } ;
typedef TYPE_2__ MSIRECORD ;
typedef TYPE_3__ MSIQUERY ;
typedef TYPE_4__ MSIPACKAGE ;
typedef int MSIFILEHASHINFO ;
typedef TYPE_5__ MSIFILE ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MSI_OpenQuery (int ,TYPE_3__**,char const*,int ) ;
 void* MSI_RecordGetInteger (TYPE_2__*,int) ;
 scalar_t__ MSI_ViewExecute (TYPE_3__*,int *) ;
 scalar_t__ MSI_ViewFetch (TYPE_3__*,TYPE_2__**) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT load_file_hash(MSIPACKAGE *package, MSIFILE *file)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ', 'F','R','O','M',' ',
        '`','M','s','i','F','i','l','e','H','a','s','h','`',' ',
        'W','H','E','R','E',' ','`','F','i','l','e','_','`',' ','=',' ','\'','%','s','\'',0};
    MSIQUERY *view = ((void*)0);
    MSIRECORD *row = ((void*)0);
    UINT r;

    TRACE("%s\n", debugstr_w(file->File));

    r = MSI_OpenQuery(package->db, &view, query, file->File);
    if (r != ERROR_SUCCESS)
        goto done;

    r = MSI_ViewExecute(view, ((void*)0));
    if (r != ERROR_SUCCESS)
        goto done;

    r = MSI_ViewFetch(view, &row);
    if (r != ERROR_SUCCESS)
        goto done;

    file->hash.dwFileHashInfoSize = sizeof(MSIFILEHASHINFO);
    file->hash.dwData[0] = MSI_RecordGetInteger(row, 3);
    file->hash.dwData[1] = MSI_RecordGetInteger(row, 4);
    file->hash.dwData[2] = MSI_RecordGetInteger(row, 5);
    file->hash.dwData[3] = MSI_RecordGetInteger(row, 6);

done:
    if (view) msiobj_release(&view->hdr);
    if (row) msiobj_release(&row->hdr);
    return r;
}
