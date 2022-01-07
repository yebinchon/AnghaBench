
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* package; } ;
typedef TYPE_2__ msi_dialog ;
typedef char WCHAR ;
struct TYPE_9__ {int hdr; } ;
struct TYPE_7__ {int db; } ;
typedef TYPE_3__ MSIRECORD ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;


 TYPE_3__* MSI_QueryGetRecord (int ,char const*,int ) ;
 int MSI_RecordGetString (TYPE_3__*,int) ;
 int msiobj_release (int *) ;
 int * strdupW (int ) ;

__attribute__((used)) static LPWSTR msi_dialog_get_uitext( msi_dialog *dialog, LPCWSTR key )
{
    MSIRECORD *rec;
    LPWSTR text;

    static const WCHAR query[] = {
        's','e','l','e','c','t',' ','*',' ',
        'f','r','o','m',' ','`','U','I','T','e','x','t','`',' ',
        'w','h','e','r','e',' ','`','K','e','y','`',' ','=',' ','\'','%','s','\'',0
    };

    rec = MSI_QueryGetRecord( dialog->package->db, query, key );
    if (!rec) return ((void*)0);
    text = strdupW( MSI_RecordGetString( rec, 2 ) );
    msiobj_release( &rec->hdr );
    return text;
}
