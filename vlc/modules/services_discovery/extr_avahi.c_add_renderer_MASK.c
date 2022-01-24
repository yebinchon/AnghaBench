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
typedef  int /*<<< orphan*/  vlc_renderer_item_t ;
typedef  int /*<<< orphan*/  vlc_renderer_discovery_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  services_name_to_input_item; scalar_t__ parent; } ;
typedef  TYPE_1__ discovery_sys_t ;
typedef  int /*<<< orphan*/  AvahiStringList ;

/* Variables and functions */
 int VLC_RENDERER_CAN_AUDIO ; 
 int VLC_RENDERER_CAN_VIDEO ; 
 scalar_t__ FUNC0 (char**,char*,char const*,char const*,...) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char*,char*,char const*,char const*,char*,int) ; 

__attribute__((used)) static void FUNC11( const char *psz_protocol, const char *psz_name,
                          const char *psz_addr, uint16_t i_port,
                          AvahiStringList *txt, discovery_sys_t *p_sys )
{
    vlc_renderer_discovery_t *p_rd = ( vlc_renderer_discovery_t* )(p_sys->parent);
    AvahiStringList *asl = NULL;
    char *friendly_name = NULL;
    char *icon_uri = NULL;
    char *uri = NULL;
    const char *demux = NULL;
    const char *extra_uri = NULL;
    int renderer_flags = 0;

    if( !FUNC6( "chromecast", psz_protocol ) ) {
        int ret = 0;

        /* Capabilities */
        asl = FUNC3( txt, "ca" );
        if( asl != NULL ) {
            char *key = NULL;
            char *value = NULL;
            if( FUNC4( asl, &key, &value, NULL ) == 0 &&
                value != NULL )
            {
                int ca = FUNC1( value );

                if( ( ca & 0x01 ) != 0 )
                    renderer_flags |= VLC_RENDERER_CAN_VIDEO;
                if( ( ca & 0x04 ) != 0 )
                    renderer_flags |= VLC_RENDERER_CAN_AUDIO;
            }

            if( key != NULL )
                FUNC2( (void *)key );
            if( value != NULL )
                FUNC2( (void *)value );
        }

        /* Friendly name */
        asl = FUNC3( txt, "fn" );
        if( asl != NULL )
        {
            char *key = NULL;
            char *value = NULL;
            if( FUNC4( asl, &key, &value, NULL ) == 0 &&
                value != NULL )
            {
                friendly_name = FUNC7( value );
                if( !friendly_name )
                    ret = -1;
            }

            if( key != NULL )
                FUNC2( (void *)key );
            if( value != NULL )
                FUNC2( (void *)value );
        }
        if( ret < 0 )
            goto error;

        /* Icon */
        asl = FUNC3( txt, "ic" );
        if( asl != NULL ) {
            char *key = NULL;
            char *value = NULL;
            if( FUNC4( asl, &key, &value, NULL ) == 0 &&
                value != NULL )
                ret = FUNC0( &icon_uri, "http://%s:8008%s", psz_addr, value);

            if( key != NULL )
                FUNC2( (void *)key );
            if( value != NULL )
                FUNC2( (void *)value );
        }
        if( ret < 0 )
            goto error;

        if( FUNC0( &uri, "%s://%s:%u", psz_protocol, psz_addr, i_port ) < 0 )
            goto error;

        extra_uri = renderer_flags & VLC_RENDERER_CAN_VIDEO ? NULL : "no-video";
        demux = "cc_demux";
    }

    vlc_renderer_item_t *p_renderer_item =
        FUNC10( psz_protocol, friendly_name ? friendly_name : psz_name, uri, extra_uri,
                               demux, icon_uri, renderer_flags );
    if( p_renderer_item == NULL )
        goto error;

    FUNC8( &p_sys->services_name_to_input_item,
        psz_name, p_renderer_item);
    FUNC9( p_rd, p_renderer_item );

error:
    FUNC5( friendly_name );
    FUNC5( icon_uri );
    FUNC5( uri );
}