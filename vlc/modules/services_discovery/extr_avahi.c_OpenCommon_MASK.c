#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ renderer; int /*<<< orphan*/ * poll; int /*<<< orphan*/ * client; int /*<<< orphan*/  parent; int /*<<< orphan*/  services_name_to_input_item; } ;
typedef  TYPE_1__ discovery_sys_t ;
struct TYPE_7__ {scalar_t__ b_renderer; int /*<<< orphan*/  psz_service_name; } ;
typedef  int /*<<< orphan*/  AvahiServiceBrowser ;

/* Variables and functions */
 int /*<<< orphan*/  AVAHI_IF_UNSPEC ; 
 int /*<<< orphan*/  AVAHI_PROTO_UNSPEC ; 
 unsigned int NB_PROTOCOLS ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  browse_callback ; 
 int /*<<< orphan*/  client_callback ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* protocols ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11( discovery_sys_t *p_sys )
{
    int err;

    FUNC10( &p_sys->services_name_to_input_item, 1 );

    p_sys->poll = FUNC7();
    if( p_sys->poll == NULL )
    {
        FUNC9( p_sys->parent, "failed to create Avahi threaded poll" );
        goto error;
    }

    p_sys->client = FUNC2( FUNC6(p_sys->poll),
                                      0, client_callback, p_sys, &err );
    if( p_sys->client == NULL )
    {
        FUNC9( p_sys->parent, "failed to create avahi client: %s",
                 FUNC4( err ) );
        goto error;
    }

    for( unsigned i = 0; i < NB_PROTOCOLS; i++ )
    {
        if( protocols[i].b_renderer != p_sys->renderer )
            continue;

        AvahiServiceBrowser *sb;
        sb = FUNC3( p_sys->client, AVAHI_IF_UNSPEC,
                AVAHI_PROTO_UNSPEC,
                protocols[i].psz_service_name, NULL,
                0, browse_callback, p_sys );
        if( sb == NULL )
        {
            FUNC9( p_sys->parent, "failed to create avahi service browser %s", FUNC4( FUNC0(p_sys->client) ) );
            goto error;
        }
    }

    FUNC8( p_sys->poll );

    return VLC_SUCCESS;

error:
    if( p_sys->client != NULL )
        FUNC1( p_sys->client );
    if( p_sys->poll != NULL )
        FUNC5( p_sys->poll );

    return VLC_EGENERIC;
}