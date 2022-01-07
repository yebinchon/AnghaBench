
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* package; } ;
typedef TYPE_1__ msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_11__ {int db; } ;
struct TYPE_10__ {int hdr; } ;
typedef TYPE_2__ MSIRECORD ;


 int ERROR_SUCCESS ;
 TYPE_2__* MSI_CreateRecord (int) ;
 int MSI_RecordSetStringW (TYPE_2__*,int,int *) ;
 int MSI_SetTargetPathW (TYPE_3__*,int const*,int *) ;
 int * msi_dup_property (int ,int const*) ;
 int msi_event_fire (TYPE_3__*,int ,TYPE_2__*) ;
 int msi_free (int *) ;
 int szSelectionPath ;

__attribute__((used)) static UINT event_set_target_path( msi_dialog *dialog, const WCHAR *argument )
{
    WCHAR *path = msi_dup_property( dialog->package->db, argument );
    MSIRECORD *rec = MSI_CreateRecord( 1 );
    UINT r = ERROR_SUCCESS;

    MSI_RecordSetStringW( rec, 1, path );
    msi_event_fire( dialog->package, szSelectionPath, rec );
    if (path)
    {

        r = MSI_SetTargetPathW( dialog->package, argument, path );
        msi_free( path );
    }
    msi_free( &rec->hdr );
    return r;
}
