
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct TYPE_3__ {char* psz_location; } ;
typedef TYPE_1__ stream_t ;


 int ITEM_NET ;
 int VLC_ENOMEM ;
 int asprintf (char**,char*,char*,char const*,char*) ;
 int free (char*) ;
 int strlen (char*) ;
 int vlc_readdir_helper_additem (struct vlc_readdir_helper*,char*,int *,char const*,int,int ) ;
 char* vlc_uri_encode (char const*) ;

__attribute__((used)) static int add_item( stream_t *p_access, struct vlc_readdir_helper *p_rdh,
                     const char *psz_name, int i_type )
{
    char *psz_uri;
    int i_ret;

    char *psz_encoded_name = vlc_uri_encode( psz_name );
    if( psz_encoded_name == ((void*)0) )
        return VLC_ENOMEM;
    const char *psz_sep = p_access->psz_location[0] != '\0'
        && p_access->psz_location[strlen(p_access->psz_location) -1] != '/'
        ? "/" : "";
    i_ret = asprintf( &psz_uri, "smb://%s%s%s", p_access->psz_location,
                      psz_sep, psz_encoded_name );
    free( psz_encoded_name );
    if( i_ret == -1 )
        return VLC_ENOMEM;

    i_ret = vlc_readdir_helper_additem( p_rdh, psz_uri, ((void*)0), psz_name, i_type,
                                        ITEM_NET );
    free( psz_uri );
    return i_ret;
}
