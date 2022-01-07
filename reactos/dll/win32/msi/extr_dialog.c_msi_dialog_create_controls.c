
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msi_dialog ;
typedef size_t UINT ;
struct TYPE_2__ {int (* func ) (int *,int *) ;int control_type; } ;
typedef int MSIRECORD ;
typedef int * LPVOID ;
typedef int LPCWSTR ;


 int ERR (char*,int ) ;
 size_t ERROR_SUCCESS ;
 int MSI_RecordGetString (int *,int) ;
 size_t NUM_CONTROL_TYPES ;
 int debugstr_w (int ) ;
 TYPE_1__* msi_dialog_handler ;
 int strcmpiW (int ,int ) ;
 int stub1 (int *,int *) ;

__attribute__((used)) static UINT msi_dialog_create_controls( MSIRECORD *rec, LPVOID param )
{
    msi_dialog *dialog = param;
    LPCWSTR control_type;
    UINT i;


    control_type = MSI_RecordGetString( rec, 3 );
    for( i=0; i<NUM_CONTROL_TYPES; i++ )
        if (!strcmpiW( msi_dialog_handler[i].control_type, control_type ))
            break;
    if( i != NUM_CONTROL_TYPES )
        msi_dialog_handler[i].func( dialog, rec );
    else
        ERR("no handler for element type %s\n", debugstr_w(control_type));

    return ERROR_SUCCESS;
}
