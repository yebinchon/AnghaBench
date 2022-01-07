
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int selected; TYPE_3__* boxes; int udata; int (* callback ) (int ,int ,unsigned int,int ,int *,int ) ;} ;
typedef TYPE_1__ listview ;
typedef int gboolean ;
typedef int TextBoxFontType ;
struct TYPE_5__ {int icon; int textbox; } ;


 int ALT ;
 int HIGHLIGHT ;
 int NORMAL ;
 int listview_set_state (TYPE_3__,int ) ;
 int stub1 (int ,int ,unsigned int,int ,int *,int ) ;

__attribute__((used)) static void update_element ( listview *lv, unsigned int tb, unsigned int index, gboolean full )
{

    TextBoxFontType type = ( index & 1 ) == 0 ? NORMAL : ALT;
    type = ( index ) == lv->selected ? HIGHLIGHT : type;

    if ( lv->callback ) {
        lv->callback ( lv->boxes[tb].textbox, lv->boxes[tb].icon, index, lv->udata, &type, full );
        listview_set_state ( lv->boxes[tb], type);
    }
}
