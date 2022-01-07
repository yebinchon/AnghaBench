
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct patch_offset_list {scalar_t__ min; scalar_t__ max; } ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int hdr; } ;
struct TYPE_14__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIQUERY ;
typedef int MSIDATABASE ;


 scalar_t__ ERROR_SUCCESS ;
 TYPE_1__* MSI_CreateRecord (int) ;
 scalar_t__ MSI_DatabaseOpenViewW (int *,char const*,TYPE_2__**) ;
 int MSI_RecordSetInteger (TYPE_1__*,int,scalar_t__) ;
 scalar_t__ MSI_ViewExecute (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ MSI_ViewFetch (TYPE_2__*,TYPE_1__**) ;
 int msiobj_release (int *) ;
 scalar_t__ patch_update_file_sequence (int *,struct patch_offset_list*,TYPE_2__*,TYPE_1__*) ;
 scalar_t__ patch_update_filepatch_sequence (int *,struct patch_offset_list*,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static UINT patch_offset_modify_db( MSIDATABASE *db, struct patch_offset_list *pos )
{
    static const WCHAR file_query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','`','F','i','l','e','`',' ',
        'W','H','E','R','E',' ','`','S','e','q','u','e','n','c','e','`',' ','>','=',' ','?',' ',
        'A','N','D',' ','`','S','e','q','u','e','n','c','e','`',' ','<','=',' ','?',' ',
        'O','R','D','E','R',' ','B','Y',' ','`','S','e','q','u','e','n','c','e','`',0};
    static const WCHAR patch_query[] = {
        'S','E','L','E','C','T',' ','*','F','R','O','M',' ','`','P','a','t','c','h','`',' ',
        'W','H','E','R','E',' ','`','S','e','q','u','e','n','c','e','`',' ','>','=',' ','?',' ',
        'A','N','D',' ','`','S','e','q','u','e','n','c','e','`',' ','<','=',' ','?',' ',
        'O','R','D','E','R',' ','B','Y',' ','`','S','e','q','u','e','n','c','e','`',0};
    MSIRECORD *rec;
    MSIQUERY *view;
    UINT r, min = pos->min, max = pos->max, r_fetch;

    r = MSI_DatabaseOpenViewW( db, file_query, &view );
    if (r != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    rec = MSI_CreateRecord( 2 );
    MSI_RecordSetInteger( rec, 1, min );
    MSI_RecordSetInteger( rec, 2, max );

    r = MSI_ViewExecute( view, rec );
    msiobj_release( &rec->hdr );
    if (r != ERROR_SUCCESS)
        goto done;

    while ((r_fetch = MSI_ViewFetch( view, &rec )) == ERROR_SUCCESS)
    {
        r = patch_update_file_sequence( db, pos, view, rec );
        msiobj_release( &rec->hdr );
        if (r != ERROR_SUCCESS) goto done;
    }
    msiobj_release( &view->hdr );

    r = MSI_DatabaseOpenViewW( db, patch_query, &view );
    if (r != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    rec = MSI_CreateRecord( 2 );
    MSI_RecordSetInteger( rec, 1, min );
    MSI_RecordSetInteger( rec, 2, max );

    r = MSI_ViewExecute( view, rec );
    msiobj_release( &rec->hdr );
    if (r != ERROR_SUCCESS)
        goto done;

    while ((r_fetch = MSI_ViewFetch( view, &rec )) == ERROR_SUCCESS)
    {
        r = patch_update_filepatch_sequence( db, pos, view, rec );
        msiobj_release( &rec->hdr );
        if (r != ERROR_SUCCESS) goto done;
    }

done:
    msiobj_release( &view->hdr );
    return r;
}
