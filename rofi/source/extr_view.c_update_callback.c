
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int textbox ;
typedef int icon ;
typedef scalar_t__ gboolean ;
typedef int cairo_surface_t ;
typedef int TextBoxFontType ;
struct TYPE_19__ {scalar_t__ data; } ;
struct TYPE_16__ {double member_0; double member_1; double member_2; double member_3; } ;
struct TYPE_18__ {int member_0; TYPE_1__ member_1; } ;
struct TYPE_17__ {int * line_map; int sw; scalar_t__ tokens; } ;
struct TYPE_15__ {scalar_t__ show_match; } ;
typedef TYPE_2__ RofiViewState ;
typedef TYPE_3__ RofiHighlightColorStyle ;
typedef int PangoAttribute ;
typedef int PangoAttrList ;
typedef TYPE_4__ GList ;


 int FALSE ;
 int ROFI_HL_BOLD ;
 int ROFI_HL_UNDERLINE ;
 int TRUE ;
 int WIDGET (int *) ;
 TYPE_14__ config ;
 int g_free (char*) ;
 TYPE_4__* g_list_first (TYPE_4__*) ;
 int g_list_free (TYPE_4__*) ;
 TYPE_4__* g_list_next (TYPE_4__*) ;
 int helper_token_match_get_pango_attr (TYPE_3__,scalar_t__,int ,int *) ;
 int icon_set_surface (int *,int *) ;
 char* mode_get_display_value (int ,int ,int*,TYPE_4__**,int ) ;
 int * mode_get_icon (int ,int ,int) ;
 int pango_attr_list_insert (int *,int *) ;
 int * pango_attr_list_new () ;
 int pango_attr_list_ref (int *) ;
 int pango_attr_list_unref (int *) ;
 TYPE_3__ rofi_theme_get_highlight (int ,char*,TYPE_3__) ;
 int textbox_font (int *,int) ;
 int * textbox_get_pango_attributes (int *) ;
 int textbox_get_visible_text (int *) ;
 int textbox_set_pango_attributes (int *,int *) ;
 int textbox_text (int *,char*) ;
 int widget_get_desired_height (int ) ;

__attribute__((used)) static void update_callback ( textbox *t,icon *ico, unsigned int index, void *udata, TextBoxFontType *type, gboolean full )
{
    RofiViewState *state = (RofiViewState *) udata;
    if ( full ) {
        GList *add_list = ((void*)0);
        int fstate = 0;
        char *text = mode_get_display_value ( state->sw, state->line_map[index], &fstate, &add_list, TRUE );
        (*type) |= fstate;

        textbox_font ( t, *type );

        textbox_text ( t, text );
        PangoAttrList *list = textbox_get_pango_attributes ( t );
        if ( list != ((void*)0) ) {
            pango_attr_list_ref ( list );
        }
        else{
            list = pango_attr_list_new ();
        }
        if( ico ) {
            int icon_height = widget_get_desired_height( WIDGET(ico) );
            cairo_surface_t *icon = mode_get_icon ( state->sw, state->line_map[index], icon_height );
            icon_set_surface ( ico, icon );
        }

        if ( state->tokens && config.show_match ) {
            RofiHighlightColorStyle th = { ROFI_HL_BOLD | ROFI_HL_UNDERLINE, { 0.0, 0.0, 0.0, 0.0 } };
            th = rofi_theme_get_highlight ( WIDGET ( t ), "highlight", th );
            helper_token_match_get_pango_attr ( th, state->tokens, textbox_get_visible_text ( t ), list );
        }
        for ( GList *iter = g_list_first ( add_list ); iter != ((void*)0); iter = g_list_next ( iter ) ) {
            pango_attr_list_insert ( list, (PangoAttribute *) ( iter->data ) );
        }
        textbox_set_pango_attributes ( t, list );
        pango_attr_list_unref ( list );
        g_list_free ( add_list );
        g_free ( text );
    }
    else {
        int fstate = 0;
        mode_get_display_value ( state->sw, state->line_map[index], &fstate, ((void*)0), FALSE );
        (*type) |= fstate;

        textbox_font ( t, *type );
    }
}
