
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIPACKAGE ;


 int INSTALLMESSAGE_PROGRESS ;
 TYPE_1__* MSI_CreateRecord (int) ;
 int MSI_ProcessMessage (int *,int ,TYPE_1__*) ;
 int MSI_RecordSetInteger (TYPE_1__*,int,int) ;
 int msi_dialog_check_messages (int *) ;
 int msiobj_release (int *) ;

void msi_ui_progress( MSIPACKAGE *package, int a, int b, int c, int d )
{
    MSIRECORD *row;

    row = MSI_CreateRecord( 4 );
    MSI_RecordSetInteger( row, 1, a );
    MSI_RecordSetInteger( row, 2, b );
    MSI_RecordSetInteger( row, 3, c );
    MSI_RecordSetInteger( row, 4, d );
    MSI_ProcessMessage( package, INSTALLMESSAGE_PROGRESS, row );
    msiobj_release( &row->hdr );

    msi_dialog_check_messages( ((void*)0) );
}
