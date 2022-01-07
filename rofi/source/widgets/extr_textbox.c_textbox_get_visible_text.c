
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int layout; } ;
typedef TYPE_1__ textbox ;


 char const* pango_layout_get_text (int ) ;

const char *textbox_get_visible_text ( const textbox *tb )
{
    if ( tb == ((void*)0) ) {
        return ((void*)0);
    }
    return pango_layout_get_text ( tb->layout );
}
