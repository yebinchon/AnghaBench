
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_array_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (char*) ;
 int strcspn (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strndup (char const*,int) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_array_append (int *,char*) ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 int vlc_array_init (int *) ;
 char* vlc_array_item_at_index (int *,size_t) ;
 int vlc_uri_decode (char*) ;

__attribute__((used)) static inline int
mrl_FragmentSplit( vlc_array_t* out_items,
                   char const** out_extra,
                   char const* payload )
{
    char const* extra = ((void*)0);

    vlc_array_init( out_items );

    while( strncmp( payload, "!/", 2 ) == 0 )
    {
        payload += 2;

        int len = strcspn( payload, "!?" );
        char* decoded = strndup( payload, len );

        if( unlikely( !decoded ) || !vlc_uri_decode( decoded ) )
            goto error;

        if( vlc_array_append( out_items, decoded ) )
        {
            free( decoded );
            goto error;
        }
        payload += len;
    }

    if( *payload )
    {
        if( *payload == '!' )
            goto error;

        if( *payload == '?' && vlc_array_count( out_items ) )
            ++payload;

        extra = payload;
    }

    *out_extra = extra;
    return VLC_SUCCESS;

error:
    for( size_t i = 0; i < vlc_array_count( out_items ); ++i )
        free( vlc_array_item_at_index( out_items, i ) );
    vlc_array_clear( out_items );
    return VLC_EGENERIC;;
}
