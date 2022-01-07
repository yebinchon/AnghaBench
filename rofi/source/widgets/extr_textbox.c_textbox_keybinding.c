
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int flags; } ;
typedef TYPE_1__ textbox ;
typedef int KeyBindingAction ;
 int TB_EDITABLE ;
 int TRUE ;
 int g_return_val_if_reached (int ) ;
 int textbox_cursor (TYPE_1__*,int ) ;
 int textbox_cursor_bkspc (TYPE_1__*) ;
 int textbox_cursor_bkspc_word (TYPE_1__*) ;
 int textbox_cursor_dec (TYPE_1__*) ;
 int textbox_cursor_dec_word (TYPE_1__*) ;
 int textbox_cursor_del (TYPE_1__*) ;
 int textbox_cursor_del_eol (TYPE_1__*) ;
 int textbox_cursor_del_sol (TYPE_1__*) ;
 int textbox_cursor_del_word (TYPE_1__*) ;
 int textbox_cursor_end (TYPE_1__*) ;
 int textbox_cursor_inc (TYPE_1__*) ;
 int textbox_cursor_inc_word (TYPE_1__*) ;
 int textbox_text (TYPE_1__*,char*) ;

int textbox_keybinding ( textbox *tb, KeyBindingAction action )
{
    if ( tb == ((void*)0) ) {
        return 0;
    }
    if ( !( tb->flags & TB_EDITABLE ) ) {
        return 0;
    }

    switch ( action )
    {

    case 139:
        return ( textbox_cursor_dec ( tb ) == TRUE ) ? 2 : 0;

    case 138:
        return ( textbox_cursor_inc ( tb ) == TRUE ) ? 2 : 0;

    case 140:
        textbox_text ( tb, "" );
        return 1;

    case 136:
        textbox_cursor ( tb, 0 );
        return 2;

    case 137:
        textbox_cursor_end ( tb );
        return 2;

    case 129:
        textbox_cursor_bkspc_word ( tb );
        return 1;

    case 128:
        textbox_cursor_del_word ( tb );
        return 1;
    case 131:
        textbox_cursor_del_eol ( tb );
        return 1;
    case 130:
        textbox_cursor_del_sol ( tb );
        return 1;

    case 132:
        textbox_cursor_del ( tb );
        return 1;

    case 135:
        textbox_cursor_dec_word ( tb );
        return 2;

    case 134:
        textbox_cursor_inc_word ( tb );
        return 2;

    case 133:
        textbox_cursor_bkspc ( tb );
        return 1;
    default:
        g_return_val_if_reached ( 0 );
    }
}
