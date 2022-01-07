
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct patch_offset_list {int count; int patches; int max; int min; } ;
struct patch_offset {int entry; int sequence; int name; } ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {int hdr; } ;
struct TYPE_12__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIQUERY ;
typedef int MSIDATABASE ;


 scalar_t__ ERROR_SUCCESS ;
 TYPE_1__* MSI_CreateRecord (int) ;
 scalar_t__ MSI_DatabaseOpenViewW (int *,char const*,TYPE_2__**) ;
 int MSI_RecordGetInteger (TYPE_1__*,int) ;
 int MSI_RecordSetInteger (TYPE_1__*,int,scalar_t__) ;
 scalar_t__ MSI_ViewExecute (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ MSI_ViewFetch (TYPE_2__*,TYPE_1__**) ;
 int list_add_tail (int *,int *) ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 struct patch_offset* msi_alloc (int) ;
 int msi_dup_record_field (TYPE_1__*,int) ;
 int msiobj_release (int *) ;

__attribute__((used)) static void patch_offset_get_filepatches( MSIDATABASE *db, UINT last_sequence, struct patch_offset_list *pos )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','P','a','t','c','h',' ',
        'W','H','E','R','E',' ','S','e','q','u','e','n','c','e',' ','<','=',' ','?',' ',
        'O','R','D','E','R',' ','B','Y',' ','S','e','q','u','e','n','c','e',0};
    MSIQUERY *view;
    MSIRECORD *rec;
    UINT r;

    r = MSI_DatabaseOpenViewW( db, query, &view );
    if (r != ERROR_SUCCESS)
        return;

    rec = MSI_CreateRecord( 1 );
    MSI_RecordSetInteger( rec, 1, last_sequence );

    r = MSI_ViewExecute( view, rec );
    msiobj_release( &rec->hdr );
    if (r != ERROR_SUCCESS)
        return;

    while (MSI_ViewFetch( view, &rec ) == ERROR_SUCCESS)
    {
        struct patch_offset *po = msi_alloc( sizeof(struct patch_offset) );

        po->name = msi_dup_record_field( rec, 1 );
        po->sequence = MSI_RecordGetInteger( rec, 2 );
        pos->min = min( pos->min, po->sequence );
        pos->max = max( pos->max, po->sequence );
        list_add_tail( &pos->patches, &po->entry );
        pos->count++;

        msiobj_release( &rec->hdr );
    }
    msiobj_release( &view->hdr );
}
