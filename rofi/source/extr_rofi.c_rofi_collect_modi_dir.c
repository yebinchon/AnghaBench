
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_3__ {scalar_t__ abi_version; int * module; } ;
typedef TYPE_1__ Mode ;
typedef int GModule ;
typedef int GDir ;


 scalar_t__ ABI_VERSION ;
 int G_MODULE_BIND_LAZY ;
 int G_MODULE_BIND_LOCAL ;
 int G_MODULE_SUFFIX ;
 char* g_build_filename (char const*,char const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char const*,int ,int *) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 int g_module_close (int *) ;
 int g_module_error () ;
 int * g_module_open (char*,int) ;
 scalar_t__ g_module_symbol (int *,char*,int *) ;
 int g_str_has_suffix (char const*,int ) ;
 int g_warning (char*,char const*,...) ;
 int rofi_collect_modi_add (TYPE_1__*) ;

__attribute__((used)) static void rofi_collect_modi_dir ( const char *base_dir )
{
    GDir *dir = g_dir_open ( base_dir, 0, ((void*)0) );
    if ( dir ) {
        const char *dn = ((void*)0);
        while ( ( dn = g_dir_read_name ( dir ) ) ) {
            if ( !g_str_has_suffix ( dn, G_MODULE_SUFFIX ) ) {
                continue;
            }
            char *fn = g_build_filename ( base_dir, dn, ((void*)0) );
            GModule *mod = g_module_open ( fn, G_MODULE_BIND_LAZY | G_MODULE_BIND_LOCAL );
            if ( mod ) {
                Mode *m = ((void*)0);
                if ( g_module_symbol ( mod, "mode", (gpointer *) &m ) ) {
                    if ( m->abi_version != ABI_VERSION ) {
                        g_warning ( "ABI version of plugin: '%s' does not match: %08X expecting: %08X", dn, m->abi_version, ABI_VERSION );
                        g_module_close ( mod );
                    }
                    else {
                        m->module = mod;
                        if ( !rofi_collect_modi_add ( m ) ) {
                            g_module_close ( mod );
                        }
                    }
                }
                else {
                    g_warning ( "Symbol 'mode' not found in module: %s", dn );
                    g_module_close ( mod );
                }
            }
            else {
                g_warning ( "Failed to open 'mode' plugin: '%s', error: %s", dn, g_module_error () );
            }
            g_free ( fn );
        }
        g_dir_close ( dir );
    }
}
