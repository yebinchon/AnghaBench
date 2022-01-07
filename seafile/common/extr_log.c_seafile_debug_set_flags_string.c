
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint ;
typedef int gchar ;


 int G_N_ELEMENTS (int ) ;
 int debug_keys ;
 int g_parse_debug_string (int const*,int ,int ) ;
 int seafile_debug_set_flags (int ) ;

void
seafile_debug_set_flags_string (const gchar *flags_string)
{
    guint nkeys = G_N_ELEMENTS (debug_keys);

    if (flags_string)
        seafile_debug_set_flags (
            g_parse_debug_string (flags_string, debug_keys, nkeys));
}
