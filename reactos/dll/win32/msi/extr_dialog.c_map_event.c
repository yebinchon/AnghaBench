
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dialog_control {int control; int dialog; } ;
typedef int WCHAR ;
typedef int UINT ;
typedef int MSIRECORD ;


 int ERROR_SUCCESS ;
 int * MSI_RecordGetString (int *,int) ;
 int event_subscribe (int ,int const*,int ,int const*) ;

__attribute__((used)) static UINT map_event( MSIRECORD *row, void *param )
{
    struct dialog_control *dc = param;
    const WCHAR *event = MSI_RecordGetString( row, 3 );
    const WCHAR *attribute = MSI_RecordGetString( row, 4 );

    event_subscribe( dc->dialog, event, dc->control, attribute );
    return ERROR_SUCCESS;
}
