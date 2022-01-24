#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  services_discovery_t ;
typedef  int /*<<< orphan*/  netbios_ns_entry ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_NET ; 
 char NETBIOS_FILESERVER ; 
 scalar_t__ FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8( void *p_opaque,
                                                netbios_ns_entry *p_entry )
{
    services_discovery_t *p_sd = (services_discovery_t *)p_opaque;

    char type = FUNC7( p_entry );

    if( type == NETBIOS_FILESERVER )
    {
        input_item_t *p_item;
        char *psz_mrl;
        const char *name = FUNC6( p_entry );

        if( FUNC0(&psz_mrl, "smb://%s", name) < 0 )
            return;

        p_item = FUNC3( psz_mrl, name, ITEM_NET );
        FUNC5( p_sd, "Adding item %s", psz_mrl );
        FUNC2(psz_mrl);

        FUNC1( p_sd, p_entry, p_item );
        FUNC4( p_item );
    }
}