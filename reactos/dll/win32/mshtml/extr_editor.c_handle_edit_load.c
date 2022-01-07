
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* doc_obj; } ;
struct TYPE_4__ {int nscontainer; } ;
typedef TYPE_2__ HTMLDocument ;


 int get_editor_controller (int ) ;

void handle_edit_load(HTMLDocument *This)
{
    get_editor_controller(This->doc_obj->nscontainer);
}
