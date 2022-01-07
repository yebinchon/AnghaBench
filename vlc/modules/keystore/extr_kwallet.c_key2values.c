
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * psz_option; scalar_t__ psz_path; scalar_t__ i_port; scalar_t__ psz_host; scalar_t__ psz_username; scalar_t__ psz_protocol; } ;
typedef TYPE_1__ vlc_url_t ;
struct TYPE_7__ {int ** ppsz_values; } ;
typedef TYPE_2__ vlc_keystore_entry ;
typedef enum vlc_keystore_key { ____Placeholder_vlc_keystore_key } vlc_keystore_key ;


 size_t KEY_AUTHTYPE ;
 int KEY_MAX ;
 size_t KEY_PATH ;
 size_t KEY_PORT ;
 size_t KEY_PROTOCOL ;
 size_t KEY_REALM ;
 size_t KEY_SERVER ;
 size_t KEY_USER ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int asprintf (int **,char*,scalar_t__) ;
 int free (int *) ;
 void* strdup (scalar_t__) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int) ;
 char* strtok_r (int *,char*,char**) ;
 int vlc_UrlClean (TYPE_1__*) ;
 int vlc_UrlParse (TYPE_1__*,char*) ;
 int * vlc_b64_decode (char const*) ;

__attribute__((used)) static int
key2values( char* psz_key, vlc_keystore_entry* p_entry )
{
    vlc_url_t url;
    int i_ret = VLC_ENOMEM;

    for ( int inc = 0 ; inc < KEY_MAX ; ++inc )
        p_entry->ppsz_values[inc] = ((void*)0);

    vlc_UrlParse( &url, psz_key );

    if ( url.psz_protocol && !( p_entry->ppsz_values[KEY_PROTOCOL] =
                                strdup( url.psz_protocol ) ) )
        goto end;
    if ( url.psz_username && !( p_entry->ppsz_values[KEY_USER] =
                                strdup( url.psz_username ) ) )
        goto end;
    if ( url.psz_host && !( p_entry->ppsz_values[KEY_SERVER] =
                            strdup( url.psz_host ) ) )
        goto end;
    if ( url.i_port && asprintf( &p_entry->ppsz_values[KEY_PORT],
                                 "%d", url.i_port) == -1 )
        goto end;
    if ( url.psz_path && !( p_entry->ppsz_values[KEY_PATH] =
                            strdup( url.psz_path ) ) )
        goto end;
    if ( url.psz_option )
    {
        char *p_savetpr;

        for ( const char *psz_option = strtok_r( url.psz_option, "&", &p_savetpr );
              psz_option != ((void*)0);
              psz_option = strtok_r( ((void*)0), "&", &p_savetpr ) )
        {
            enum vlc_keystore_key key;
            const char *psz_value;

            if ( !strncmp( psz_option, "realm=", strlen( "realm=" ) ) )
            {
                key = KEY_REALM;
                psz_value = psz_option + strlen( "realm=" );
            }
            else if ( !strncmp( psz_option, "authtype=", strlen( "authtype=" ) ) )
            {
                key = KEY_AUTHTYPE;
                psz_value = psz_option + strlen( "authtype=" );
            }
            else
                psz_value = ((void*)0);

            if ( psz_value != ((void*)0) )
            {
                p_entry->ppsz_values[key] = vlc_b64_decode( psz_value );
                if ( !p_entry->ppsz_values[key] )
                    goto end;
            }
        }
    }

    i_ret = VLC_SUCCESS;

end:
    vlc_UrlClean( &url );
    if ( i_ret )
    {
        free( p_entry->ppsz_values[KEY_PROTOCOL] );
        free( p_entry->ppsz_values[KEY_USER] );
        free( p_entry->ppsz_values[KEY_SERVER] );
        free( p_entry->ppsz_values[KEY_PORT] );
        free( p_entry->ppsz_values[KEY_PATH] );
        free( p_entry->ppsz_values[KEY_REALM] );
        free ( p_entry->ppsz_values[KEY_AUTHTYPE] );
    }
    return i_ret;
}
