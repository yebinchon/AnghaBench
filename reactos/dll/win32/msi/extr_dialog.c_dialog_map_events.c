
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dialog_control {char const* member_1; TYPE_2__* member_0; } ;
struct TYPE_8__ {int name; TYPE_1__* package; } ;
typedef TYPE_2__ msi_dialog ;
typedef char WCHAR ;
struct TYPE_9__ {int hdr; } ;
struct TYPE_7__ {int db; } ;
typedef TYPE_3__ MSIQUERY ;


 int MSI_IterateRecords (TYPE_3__*,int *,int ,struct dialog_control*) ;
 int MSI_OpenQuery (int ,TYPE_3__**,char const*,int ,char const*) ;
 int map_event ;
 int msiobj_release (int *) ;

__attribute__((used)) static void dialog_map_events( msi_dialog *dialog, const WCHAR *control )
{
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
         '`','E','v','e','n','t','M','a','p','p','i','n','g','`',' ',
         'W','H','E','R','E',' ','`','D','i','a','l','o','g','_','`',' ','=',' ','\'','%','s','\'',' ',
         'A','N','D',' ','`','C','o','n','t','r','o','l','_','`',' ','=',' ','\'','%','s','\'',0};
    MSIQUERY *view;
    struct dialog_control dialog_control =
    {
        dialog,
        control
    };

    if (!MSI_OpenQuery( dialog->package->db, &view, queryW, dialog->name, control ))
    {
        MSI_IterateRecords( view, ((void*)0), map_event, &dialog_control );
        msiobj_release( &view->hdr );
    }
}
