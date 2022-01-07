
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int localfile; scalar_t__ delete_on_close; int log_file; TYPE_1__* db; scalar_t__ dialog; } ;
struct TYPE_5__ {int hdr; } ;
typedef TYPE_2__ MSIPACKAGE ;
typedef int MSIOBJECTHDR ;


 int CloseHandle (int ) ;
 int DeleteFileW (int ) ;
 int INSTALLMESSAGE_TERMINATE ;
 int MSI_ProcessMessage (int *,int ,int ) ;
 int free_package_structures (TYPE_2__*) ;
 int msi_destroy_assembly_caches (TYPE_2__*) ;
 int msi_dialog_destroy (scalar_t__) ;
 int msi_free (int ) ;
 int msiobj_release (int *) ;

__attribute__((used)) static void MSI_FreePackage( MSIOBJECTHDR *arg)
{
    MSIPACKAGE *package = (MSIPACKAGE *)arg;

    msi_destroy_assembly_caches( package );

    if( package->dialog )
        msi_dialog_destroy( package->dialog );

    msiobj_release( &package->db->hdr );
    free_package_structures(package);
    CloseHandle( package->log_file );

    if (package->delete_on_close) DeleteFileW( package->localfile );
    msi_free( package->localfile );
    MSI_ProcessMessage(((void*)0), INSTALLMESSAGE_TERMINATE, 0);
}
