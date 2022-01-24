#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_renderer_discovery_t ;
typedef  int /*<<< orphan*/  services_discovery_t ;
struct TYPE_2__ {int /*<<< orphan*/  services_name_to_input_item; scalar_t__ parent; scalar_t__ renderer; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ discovery_sys_t ;
typedef  int /*<<< orphan*/  AvahiServiceBrowser ;
typedef  int /*<<< orphan*/  AvahiProtocol ;
typedef  int /*<<< orphan*/ * AvahiLookupResultFlags ;
typedef  int /*<<< orphan*/  AvahiIfIndex ;
typedef  scalar_t__ AvahiBrowserEvent ;

/* Variables and functions */
 scalar_t__ AVAHI_BROWSER_NEW ; 
 scalar_t__ AVAHI_BROWSER_REMOVE ; 
 int /*<<< orphan*/  AVAHI_PROTO_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,char const*,...) ; 
 int /*<<< orphan*/  resolve_callback ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static void FUNC11(
    AvahiServiceBrowser *b,
    AvahiIfIndex interface,
    AvahiProtocol protocol,
    AvahiBrowserEvent event,
    const char *name,
    const char *type,
    const char *domain,
    AvahiLookupResultFlags flags,
    void* userdata )
{
    FUNC0(b);
    FUNC0(flags);
    discovery_sys_t *p_sys = userdata;
    if( event == AVAHI_BROWSER_NEW )
    {
        if( FUNC2( p_sys->client, interface, protocol,
                                        name, type, domain, AVAHI_PROTO_UNSPEC,
                                        0,
                                        resolve_callback, userdata ) == NULL )
        {
            FUNC5( p_sys->parent, "failed to resolve service '%s': %s", name,
                     FUNC3( FUNC1( p_sys->client ) ) );
        }
    }
    else if( event == AVAHI_BROWSER_REMOVE && name )
    {
        /** \todo Store the input id and search it, rather than searching the items */
        void *p_item;
        p_item = FUNC8(
                        &p_sys->services_name_to_input_item,
                        name );
        if( !p_item )
            FUNC5( p_sys->parent, "failed to find service '%s' in playlist", name );
        else
        {
            if( p_sys->renderer )
            {
                vlc_renderer_discovery_t *p_rd = ( vlc_renderer_discovery_t* )(p_sys->parent);
                FUNC9( p_rd, p_item );
                FUNC10( p_item );
            }
            else
            {
                services_discovery_t *p_sd = ( services_discovery_t* )(p_sys->parent);
                FUNC6( p_sd, p_item );
                FUNC4( p_item );
            }
            FUNC7(
                        &p_sys->services_name_to_input_item,
                        name, NULL, NULL );
        }
    }
}