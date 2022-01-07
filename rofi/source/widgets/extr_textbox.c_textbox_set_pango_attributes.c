
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int layout; } ;
typedef TYPE_1__ textbox ;
typedef int PangoAttrList ;


 int pango_layout_set_attributes (int ,int *) ;

void textbox_set_pango_attributes ( textbox *tb, PangoAttrList *list )
{
    if ( tb == ((void*)0) ) {
        return;
    }
    pango_layout_set_attributes ( tb->layout, list );
}
