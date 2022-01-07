
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ActivateAtStorage; int RunAsInteractiveUser; int entry; void* DllSurrogate; void* ServiceParameters; void* LocalServer; int RemoteServerName; void* AppID; } ;
struct TYPE_7__ {int appids; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIAPPID ;
typedef int LPCWSTR ;


 int MSI_RecordGetString (int *,int) ;
 int MSI_RecordIsNull (int *,int) ;
 int TRACE (char*,int ) ;
 int debugstr_w (void*) ;
 int deformat_string (TYPE_1__*,int ,int *) ;
 int list_add_tail (int *,int *) ;
 TYPE_2__* msi_alloc_zero (int) ;
 void* msi_dup_record_field (int *,int) ;

__attribute__((used)) static MSIAPPID *load_appid( MSIPACKAGE* package, MSIRECORD *row )
{
    LPCWSTR buffer;
    MSIAPPID *appid;



    appid = msi_alloc_zero( sizeof(MSIAPPID) );
    if (!appid)
        return ((void*)0);

    appid->AppID = msi_dup_record_field( row, 1 );
    TRACE("loading appid %s\n", debugstr_w( appid->AppID ));

    buffer = MSI_RecordGetString(row,2);
    deformat_string( package, buffer, &appid->RemoteServerName );

    appid->LocalServer = msi_dup_record_field(row,3);
    appid->ServiceParameters = msi_dup_record_field(row,4);
    appid->DllSurrogate = msi_dup_record_field(row,5);

    appid->ActivateAtStorage = !MSI_RecordIsNull(row,6);
    appid->RunAsInteractiveUser = !MSI_RecordIsNull(row,7);

    list_add_tail( &package->appids, &appid->entry );

    return appid;
}
