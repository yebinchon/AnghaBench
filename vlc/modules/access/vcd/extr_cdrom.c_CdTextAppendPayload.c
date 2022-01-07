
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_iconv_t ;
typedef enum cdtext_charset_e { ____Placeholder_cdtext_charset_e } cdtext_charset_e ;





 int EnsureUTF8 (char*) ;
 scalar_t__ VLC_ICONV_ERR ;
 int memcpy (char*,char const*,size_t) ;
 char* realloc (char*,size_t) ;
 size_t strlen (char*) ;
 scalar_t__ vlc_iconv (scalar_t__,char const**,size_t*,char**,size_t*) ;
 int vlc_iconv_close (scalar_t__) ;
 scalar_t__ vlc_iconv_open (char*,char const*) ;

__attribute__((used)) static void CdTextAppendPayload( const char *buffer, size_t i_len,
                                 enum cdtext_charset_e e_charset, char **ppsz_text )
{
    size_t i_alloc = *ppsz_text ? strlen( *ppsz_text ) : 0;
    size_t i_extend;
    const char *from_charset;
    switch( e_charset )
    {
        case 130:
            i_extend = i_len;
            from_charset = ((void*)0);
            break;
        case 129:
            i_extend = i_len * 2;
            from_charset = "ISO-8859-1";
            break;
        case 128:
            i_extend = i_len * 4;
            from_charset = "SHIFT-JIS";
            break;
        default:
            return;
    }
    size_t i_newsize = i_alloc + i_extend * 2 + 1;

    char *psz_realloc = realloc( *ppsz_text, i_newsize );
    if( !psz_realloc )
        return;
    *ppsz_text = psz_realloc;


    if ( from_charset == ((void*)0) )
    {
        memcpy( &psz_realloc[i_alloc], buffer, i_len );
        psz_realloc[i_alloc + i_len] = 0;
        EnsureUTF8( psz_realloc );
    }
    else
    {
        vlc_iconv_t ic = vlc_iconv_open( "UTF-8", from_charset );
        if( ic != (vlc_iconv_t) -1 )
        {
            const char *psz_in = buffer;
            size_t i_in = i_len;
            char *psz_out = &psz_realloc[i_alloc];
            size_t i_out = i_extend;
            if( VLC_ICONV_ERR != vlc_iconv( ic, &psz_in, &i_in, &psz_out, &i_out ) )
                psz_realloc[i_alloc + i_extend - i_out] = 0;
            vlc_iconv_close( ic );
        }
    }
}
