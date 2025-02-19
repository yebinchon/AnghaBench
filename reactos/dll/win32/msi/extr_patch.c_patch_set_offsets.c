
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct patch_offset_list {scalar_t__ min; scalar_t__ max; scalar_t__ count; scalar_t__ offset_to_apply; } ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {scalar_t__ media_transform_offset; } ;
struct TYPE_18__ {int hdr; } ;
struct TYPE_17__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIQUERY ;
typedef int MSIPATCHINFO ;
typedef TYPE_3__ MSIDATABASE ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 int MSIMODIFY_UPDATE ;
 scalar_t__ MSI_DatabaseOpenViewW (TYPE_3__*,int ,TYPE_2__**) ;
 scalar_t__ MSI_INITIAL_MEDIA_TRANSFORM_OFFSET ;
 scalar_t__ MSI_RecordGetInteger (TYPE_1__*,int) ;
 int MSI_RecordSetInteger (TYPE_1__*,int,scalar_t__) ;
 scalar_t__ MSI_ViewExecute (TYPE_2__*,int ) ;
 scalar_t__ MSI_ViewFetch (TYPE_2__*,TYPE_1__**) ;
 scalar_t__ MSI_ViewModify (TYPE_2__*,int ,TYPE_1__*) ;
 int msiobj_release (int *) ;
 int patch_media_query ;
 int patch_offset_get_filepatches (TYPE_3__*,scalar_t__,struct patch_offset_list*) ;
 int patch_offset_get_files (TYPE_3__*,scalar_t__,struct patch_offset_list*) ;
 struct patch_offset_list* patch_offset_list_create () ;
 int patch_offset_list_free (struct patch_offset_list*) ;
 scalar_t__ patch_offset_modify_db (TYPE_3__*,struct patch_offset_list*) ;

__attribute__((used)) static UINT patch_set_offsets( MSIDATABASE *db, MSIPATCHINFO *patch )
{
    MSIQUERY *view;
    MSIRECORD *rec;
    UINT r;

    r = MSI_DatabaseOpenViewW( db, patch_media_query, &view );
    if (r != ERROR_SUCCESS)
        return r;

    r = MSI_ViewExecute( view, 0 );
    if (r != ERROR_SUCCESS)
        goto done;

    while (MSI_ViewFetch( view, &rec ) == ERROR_SUCCESS)
    {
        UINT offset, last_sequence = MSI_RecordGetInteger( rec, 2 );
        struct patch_offset_list *pos;


        if (last_sequence >= MSI_INITIAL_MEDIA_TRANSFORM_OFFSET)
        {
            msiobj_release( &rec->hdr );
            continue;
        }
        pos = patch_offset_list_create();
        patch_offset_get_files( db, last_sequence, pos );
        patch_offset_get_filepatches( db, last_sequence, pos );

        offset = db->media_transform_offset - pos->min;
        last_sequence = offset + pos->max;

        last_sequence += pos->min;
        pos->offset_to_apply = offset;
        if (pos->count)
        {
            r = patch_offset_modify_db( db, pos );
            if (r != ERROR_SUCCESS)
                ERR("Failed to set offsets, expect breakage (%u)\n", r);
        }
        MSI_RecordSetInteger( rec, 2, last_sequence );
        r = MSI_ViewModify( view, MSIMODIFY_UPDATE, rec );
        if (r != ERROR_SUCCESS)
            ERR("Failed to update Media table entry, expect breakage (%u)\n", r);

        db->media_transform_offset = last_sequence + 1;

        patch_offset_list_free( pos );
        msiobj_release( &rec->hdr );
    }

done:
    msiobj_release( &view->hdr );
    return r;
}
