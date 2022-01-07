
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {TYPE_1__* db; } ;
struct TYPE_6__ {int storage; } ;
typedef int MSIRECORD ;
typedef TYPE_2__ MSIPACKAGE ;
typedef TYPE_2__* LPVOID ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MSI_INITIAL_MEDIA_TRANSFORM_DISKID ;
 scalar_t__ MSI_RecordGetInteger (int *,int) ;
 char* MSI_RecordGetString (int *,int) ;
 scalar_t__ msi_add_cabinet_stream (TYPE_2__*,scalar_t__,int ,char const*) ;

__attribute__((used)) static UINT load_media( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    UINT disk_id = MSI_RecordGetInteger( row, 1 );
    const WCHAR *cabinet = MSI_RecordGetString( row, 4 );


    if (!cabinet || cabinet[0] != '#' || disk_id >= MSI_INITIAL_MEDIA_TRANSFORM_DISKID)
        return ERROR_SUCCESS;

    return msi_add_cabinet_stream( package, disk_id, package->db->storage, cabinet );
}
