
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_4__ {int * metrics; scalar_t__ height; } ;
typedef TYPE_1__ TBFontConfig ;
typedef int PangoContext ;


 char const* default_font_name ;
 int g_assert (int ) ;
 int g_hash_table_insert (int ,int *,TYPE_1__*) ;
 TYPE_1__* g_malloc0 (int) ;
 int g_object_ref (int *) ;
 int p_context ;
 int * p_metrics ;
 int * pango_context_get_metrics (int ,int *,int *) ;
 scalar_t__ pango_font_metrics_get_ascent (int *) ;
 scalar_t__ pango_font_metrics_get_descent (int *) ;
 int tbfc_cache ;

void textbox_set_pango_context ( const char *font, PangoContext *p )
{
    g_assert ( p_metrics == ((void*)0) );
    p_context = g_object_ref ( p );
    p_metrics = pango_context_get_metrics ( p_context, ((void*)0), ((void*)0) );
    TBFontConfig *tbfc = g_malloc0 ( sizeof ( TBFontConfig ) );
    tbfc->metrics = p_metrics;
    tbfc->height = pango_font_metrics_get_ascent ( tbfc->metrics ) + pango_font_metrics_get_descent ( tbfc->metrics );
    g_hash_table_insert ( tbfc_cache, (gpointer *) ( font ? font : default_font_name ), tbfc );
}
