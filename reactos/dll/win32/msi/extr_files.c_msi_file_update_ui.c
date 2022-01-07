
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_11__ {int FileSize; TYPE_1__* Component; int FileName; } ;
struct TYPE_10__ {int hdr; } ;
struct TYPE_9__ {int Directory; } ;
typedef TYPE_2__ MSIRECORD ;
typedef int MSIPACKAGE ;
typedef TYPE_3__ MSIFILE ;


 int INSTALLMESSAGE_ACTIONDATA ;
 TYPE_2__* MSI_CreateRecord (int) ;
 int MSI_ProcessMessage (int *,int ,TYPE_2__*) ;
 int MSI_RecordSetInteger (TYPE_2__*,int,int ) ;
 int MSI_RecordSetStringW (TYPE_2__*,int,int ) ;
 int msi_ui_progress (int *,int,int ,int ,int ) ;
 int msiobj_release (int *) ;

__attribute__((used)) static void msi_file_update_ui( MSIPACKAGE *package, MSIFILE *f, const WCHAR *action )
{
    MSIRECORD *uirow;

    uirow = MSI_CreateRecord( 9 );
    MSI_RecordSetStringW( uirow, 1, f->FileName );
    MSI_RecordSetStringW( uirow, 9, f->Component->Directory );
    MSI_RecordSetInteger( uirow, 6, f->FileSize );
    MSI_ProcessMessage(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    msiobj_release( &uirow->hdr );
    msi_ui_progress( package, 2, f->FileSize, 0, 0 );
}
