
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_meta_t ;
typedef int uint8_t ;


 int free (char*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 char* strndup (char const*,size_t) ;
 size_t strnlen (char const*,size_t) ;
 int vlc_meta_ArtworkURL ;
 char* vlc_meta_Get (int *,int ) ;
 int vlc_meta_Set (int *,int ,char*) ;

__attribute__((used)) static bool ID3LinkFrameTagHandler( const uint8_t *p_buf, size_t i_buf,
                                    vlc_meta_t *p_meta, bool *pb_updated )
{
    if( i_buf > 13 && p_meta )
    {
        const char *psz = (const char *)&p_buf[1];
        size_t i_len = i_buf - 1;
        size_t i_desclen = strnlen(psz, i_len);
        if( i_desclen < i_len - 1 && i_desclen > 11 &&
            !strncmp( "artworkURL_", psz, 11 ) )
        {
            const char *psz_old = vlc_meta_Get( p_meta, vlc_meta_ArtworkURL );
            if( !psz_old || strncmp( psz_old, &psz[i_desclen], i_len - i_desclen ) )
            {
                char *p_alloc = strndup(&psz[i_desclen + 1], i_len - i_desclen - 1);
                vlc_meta_Set( p_meta, vlc_meta_ArtworkURL, p_alloc );
                free( p_alloc );
                *pb_updated = 1;
            }
        }
        return 1;
    }
    return 0;
}
