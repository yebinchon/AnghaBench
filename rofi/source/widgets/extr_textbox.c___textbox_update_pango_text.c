
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; char* text; int tbft; int layout; } ;
typedef TYPE_1__ textbox ;


 int MARKUP ;
 int TB_MARKUP ;
 int TB_PASSWORD ;
 size_t g_utf8_strlen (char*,int) ;
 int memset (char*,char,size_t) ;
 int pango_layout_set_attributes (int ,int *) ;
 int pango_layout_set_markup (int ,char*,int) ;
 int pango_layout_set_text (int ,char*,int) ;

__attribute__((used)) static void __textbox_update_pango_text ( textbox *tb )
{
    pango_layout_set_attributes ( tb->layout, ((void*)0) );
    if ( ( tb->flags & TB_PASSWORD ) == TB_PASSWORD ) {
        size_t l = g_utf8_strlen ( tb->text, -1 );
        char string [l + 1];
        memset ( string, '*', l );
        string[l] = '\0';
        pango_layout_set_text ( tb->layout, string, l );
    }
    else if ( tb->flags & TB_MARKUP || tb->tbft & MARKUP ) {
        pango_layout_set_markup ( tb->layout, tb->text, -1 );
    }
    else {
        pango_layout_set_text ( tb->layout, tb->text, -1 );
    }
}
