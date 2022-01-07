
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ disk_id; } ;
struct TYPE_6__ {int db; int patches; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIFILE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ MSI_INITIAL_MEDIA_TRANSFORM_DISKID ;
 int TRUE ;
 scalar_t__ is_registered_patch_media (TYPE_1__*,scalar_t__) ;
 int list_empty (int *) ;
 int msi_get_property_int (int ,int ,int ) ;
 int szInstalled ;

__attribute__((used)) static BOOL is_obsoleted_by_patch( MSIPACKAGE *package, MSIFILE *file )
{
    if (!list_empty( &package->patches ) && file->disk_id < MSI_INITIAL_MEDIA_TRANSFORM_DISKID)
    {
        if (!msi_get_property_int( package->db, szInstalled, 0 )) return FALSE;
        return TRUE;
    }
    if (is_registered_patch_media( package, file->disk_id )) return TRUE;
    return FALSE;
}
