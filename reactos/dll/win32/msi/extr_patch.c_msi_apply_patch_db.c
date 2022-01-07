
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_16__ {int storage; } ;
struct TYPE_15__ {int patches; int db; } ;
struct TYPE_14__ {int entry; int state; int uninstallable; int transforms; } ;
typedef TYPE_1__ MSIPATCHINFO ;
typedef TYPE_2__ MSIPACKAGE ;
typedef TYPE_3__ MSIDATABASE ;


 size_t ERROR_SUCCESS ;
 int MSIPATCHSTATE_APPLIED ;
 size_t apply_substorage_transform (TYPE_2__*,TYPE_3__*,int *) ;
 int is_uninstallable (TYPE_3__*) ;
 int list_add_tail (int *,int *) ;
 int msi_free (int **) ;
 int ** msi_split_string (int ,char) ;
 size_t patch_add_media (TYPE_2__*,int ,TYPE_1__*) ;
 size_t patch_set_media_source_prop (TYPE_2__*) ;
 size_t patch_set_offsets (int ,TYPE_1__*) ;

__attribute__((used)) static UINT msi_apply_patch_db( MSIPACKAGE *package, MSIDATABASE *patch_db, MSIPATCHINFO *patch )
{
    UINT i, r = ERROR_SUCCESS;
    WCHAR **substorage;


    substorage = msi_split_string( patch->transforms, ';' );
    for (i = 0; substorage && substorage[i] && r == ERROR_SUCCESS; i++)
    {
        r = apply_substorage_transform( package, patch_db, substorage[i] );
        if (r == ERROR_SUCCESS)
        {
            r = patch_set_offsets( package->db, patch );
            if (r == ERROR_SUCCESS)
                r = patch_add_media( package, patch_db->storage, patch );
        }
    }
    msi_free( substorage );
    if (r != ERROR_SUCCESS)
        return r;

    r = patch_set_media_source_prop( package );
    if (r != ERROR_SUCCESS)
        return r;

    patch->uninstallable = is_uninstallable( patch_db );
    patch->state = MSIPATCHSTATE_APPLIED;
    list_add_tail( &package->patches, &patch->entry );
    return ERROR_SUCCESS;
}
