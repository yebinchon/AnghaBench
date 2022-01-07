
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int metrics; int layout; } ;
typedef TYPE_1__ textbox ;
struct TYPE_10__ {int metrics; int pfd; scalar_t__ height; } ;
typedef TYPE_2__ TBFontConfig ;


 int WIDGET (TYPE_1__*) ;
 int g_free (TYPE_2__*) ;
 int g_hash_table_insert (int ,char*,TYPE_2__*) ;
 TYPE_2__* g_hash_table_lookup (int ,char const*) ;
 TYPE_2__* g_malloc0 (int) ;
 scalar_t__ helper_validate_font (int ,char const*) ;
 int p_context ;
 int p_metrics ;
 int pango_context_get_metrics (int ,int ,int *) ;
 int pango_font_description_free (int ) ;
 int pango_font_description_from_string (char const*) ;
 scalar_t__ pango_font_metrics_get_ascent (int ) ;
 scalar_t__ pango_font_metrics_get_descent (int ) ;
 int pango_layout_set_font_description (int ,int ) ;
 char* rofi_theme_get_string (int ,char*,int *) ;
 int tbfc_cache ;

__attribute__((used)) static void textbox_initialize_font ( textbox *tb )
{
    tb->metrics = p_metrics;
    const char * font = rofi_theme_get_string ( WIDGET ( tb ), "font", ((void*)0) );
    if ( font ) {
        TBFontConfig *tbfc = g_hash_table_lookup ( tbfc_cache, font );
        if ( tbfc == ((void*)0) ) {
            tbfc = g_malloc0 ( sizeof ( TBFontConfig ) );
            tbfc->pfd = pango_font_description_from_string ( font );
            if ( helper_validate_font ( tbfc->pfd, font ) ) {
                tbfc->metrics = pango_context_get_metrics ( p_context, tbfc->pfd, ((void*)0) );
                tbfc->height = pango_font_metrics_get_ascent ( tbfc->metrics ) + pango_font_metrics_get_descent ( tbfc->metrics );


                g_hash_table_insert ( tbfc_cache, (char *) font, tbfc );
            }
            else {
                pango_font_description_free ( tbfc->pfd );
                g_free ( tbfc );
                tbfc = ((void*)0);
            }
        }
        if ( tbfc ) {

            pango_layout_set_font_description ( tb->layout, tbfc->pfd );
            tb->metrics = tbfc->metrics;
        }
    }
}
