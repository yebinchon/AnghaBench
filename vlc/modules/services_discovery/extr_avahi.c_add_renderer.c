
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_renderer_item_t ;
typedef int vlc_renderer_discovery_t ;
typedef int uint16_t ;
struct TYPE_3__ {int services_name_to_input_item; scalar_t__ parent; } ;
typedef TYPE_1__ discovery_sys_t ;
typedef int AvahiStringList ;


 int VLC_RENDERER_CAN_AUDIO ;
 int VLC_RENDERER_CAN_VIDEO ;
 scalar_t__ asprintf (char**,char*,char const*,char const*,...) ;
 int atoi (char*) ;
 int avahi_free (void*) ;
 int * avahi_string_list_find (int *,char*) ;
 scalar_t__ avahi_string_list_get_pair (int *,char**,char**,int *) ;
 int free (char*) ;
 int strcmp (char*,char const*) ;
 char* strdup (char*) ;
 int vlc_dictionary_insert (int *,char const*,int *) ;
 int vlc_rd_add_item (int *,int *) ;
 int * vlc_renderer_item_new (char const*,char*,char*,char const*,char const*,char*,int) ;

__attribute__((used)) static void add_renderer( const char *psz_protocol, const char *psz_name,
                          const char *psz_addr, uint16_t i_port,
                          AvahiStringList *txt, discovery_sys_t *p_sys )
{
    vlc_renderer_discovery_t *p_rd = ( vlc_renderer_discovery_t* )(p_sys->parent);
    AvahiStringList *asl = ((void*)0);
    char *friendly_name = ((void*)0);
    char *icon_uri = ((void*)0);
    char *uri = ((void*)0);
    const char *demux = ((void*)0);
    const char *extra_uri = ((void*)0);
    int renderer_flags = 0;

    if( !strcmp( "chromecast", psz_protocol ) ) {
        int ret = 0;


        asl = avahi_string_list_find( txt, "ca" );
        if( asl != ((void*)0) ) {
            char *key = ((void*)0);
            char *value = ((void*)0);
            if( avahi_string_list_get_pair( asl, &key, &value, ((void*)0) ) == 0 &&
                value != ((void*)0) )
            {
                int ca = atoi( value );

                if( ( ca & 0x01 ) != 0 )
                    renderer_flags |= VLC_RENDERER_CAN_VIDEO;
                if( ( ca & 0x04 ) != 0 )
                    renderer_flags |= VLC_RENDERER_CAN_AUDIO;
            }

            if( key != ((void*)0) )
                avahi_free( (void *)key );
            if( value != ((void*)0) )
                avahi_free( (void *)value );
        }


        asl = avahi_string_list_find( txt, "fn" );
        if( asl != ((void*)0) )
        {
            char *key = ((void*)0);
            char *value = ((void*)0);
            if( avahi_string_list_get_pair( asl, &key, &value, ((void*)0) ) == 0 &&
                value != ((void*)0) )
            {
                friendly_name = strdup( value );
                if( !friendly_name )
                    ret = -1;
            }

            if( key != ((void*)0) )
                avahi_free( (void *)key );
            if( value != ((void*)0) )
                avahi_free( (void *)value );
        }
        if( ret < 0 )
            goto error;


        asl = avahi_string_list_find( txt, "ic" );
        if( asl != ((void*)0) ) {
            char *key = ((void*)0);
            char *value = ((void*)0);
            if( avahi_string_list_get_pair( asl, &key, &value, ((void*)0) ) == 0 &&
                value != ((void*)0) )
                ret = asprintf( &icon_uri, "http://%s:8008%s", psz_addr, value);

            if( key != ((void*)0) )
                avahi_free( (void *)key );
            if( value != ((void*)0) )
                avahi_free( (void *)value );
        }
        if( ret < 0 )
            goto error;

        if( asprintf( &uri, "%s://%s:%u", psz_protocol, psz_addr, i_port ) < 0 )
            goto error;

        extra_uri = renderer_flags & VLC_RENDERER_CAN_VIDEO ? ((void*)0) : "no-video";
        demux = "cc_demux";
    }

    vlc_renderer_item_t *p_renderer_item =
        vlc_renderer_item_new( psz_protocol, friendly_name ? friendly_name : psz_name, uri, extra_uri,
                               demux, icon_uri, renderer_flags );
    if( p_renderer_item == ((void*)0) )
        goto error;

    vlc_dictionary_insert( &p_sys->services_name_to_input_item,
        psz_name, p_renderer_item);
    vlc_rd_add_item( p_rd, p_renderer_item );

error:
    free( friendly_name );
    free( icon_uri );
    free( uri );
}
