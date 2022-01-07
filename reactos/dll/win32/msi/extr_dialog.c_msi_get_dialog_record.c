
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; TYPE_2__* package; } ;
typedef TYPE_1__ msi_dialog ;
typedef char WCHAR ;
struct TYPE_6__ {int db; } ;
typedef int MSIRECORD ;
typedef TYPE_2__ MSIPACKAGE ;


 int * MSI_QueryGetRecord (int ,char const*,int ) ;
 int TRACE (char*,TYPE_1__*,int ) ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;

__attribute__((used)) static MSIRECORD *msi_get_dialog_record( msi_dialog *dialog )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ',
        'F','R','O','M',' ','D','i','a','l','o','g',' ',
        'W','H','E','R','E',' ',
           '`','D','i','a','l','o','g','`',' ','=',' ','\'','%','s','\'',0};
    MSIPACKAGE *package = dialog->package;
    MSIRECORD *rec = ((void*)0);

    TRACE("%p %s\n", dialog, debugstr_w(dialog->name) );

    rec = MSI_QueryGetRecord( package->db, query, dialog->name );
    if( !rec )
        WARN("query failed for dialog %s\n", debugstr_w(dialog->name));

    return rec;
}
