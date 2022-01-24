#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
struct TYPE_3__ {scalar_t__ abi_version; int /*<<< orphan*/ * module; } ;
typedef  TYPE_1__ Mode ;
typedef  int /*<<< orphan*/  GModule ;
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 scalar_t__ ABI_VERSION ; 
 int G_MODULE_BIND_LAZY ; 
 int G_MODULE_BIND_LOCAL ; 
 int /*<<< orphan*/  G_MODULE_SUFFIX ; 
 char* FUNC0 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC12 ( const char *base_dir )
{
    GDir *dir = FUNC2 ( base_dir, 0, NULL );
    if ( dir ) {
        const char *dn = NULL;
        while ( ( dn = FUNC3 ( dir ) ) ) {
            if ( !FUNC9 ( dn, G_MODULE_SUFFIX ) ) {
                continue;
            }
            char    *fn  = FUNC0 ( base_dir, dn, NULL );
            GModule *mod = FUNC7 ( fn, G_MODULE_BIND_LAZY | G_MODULE_BIND_LOCAL );
            if ( mod ) {
                Mode *m = NULL;
                if ( FUNC8 ( mod, "mode", (gpointer *) &m ) ) {
                    if ( m->abi_version != ABI_VERSION ) {
                        FUNC10 ( "ABI version of plugin: '%s' does not match: %08X expecting: %08X", dn, m->abi_version, ABI_VERSION );
                        FUNC5 ( mod );
                    }
                    else {
                        m->module = mod;
                        if ( !FUNC11 ( m ) ) {
                            FUNC5 ( mod );
                        }
                    }
                }
                else {
                    FUNC10 ( "Symbol 'mode' not found in module: %s", dn );
                    FUNC5 ( mod );
                }
            }
            else {
                FUNC10 ( "Failed to open 'mode' plugin: '%s', error: %s", dn, FUNC6 () );
            }
            FUNC4 ( fn );
        }
        FUNC1 ( dir );
    }
}