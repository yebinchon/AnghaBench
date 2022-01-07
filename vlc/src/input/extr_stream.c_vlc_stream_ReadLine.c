
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ vlc_iconv_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_12__ {int * pf_block; int * pf_read; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_11__ {scalar_t__ conv; int little_endian; int char_width; } ;
struct TYPE_13__ {TYPE_1__ text; } ;
typedef TYPE_3__ stream_priv_t ;
typedef scalar_t__ int64_t ;


 int STREAM_LINE_MAX ;
 int STREAM_PROBE_LINE ;
 int U16_AT (int const*) ;
 int assert (int) ;
 int errno ;
 int free (char*) ;
 char* malloc (int) ;
 char* memchr (int const*,char,int) ;
 int memcmp (int const*,char*,int) ;
 int msg_Dbg (TYPE_2__*,char*,...) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 int msg_Warn (TYPE_2__*,char*) ;
 char* realloc_or_free (char*,int) ;
 scalar_t__ unlikely (int) ;
 size_t vlc_iconv (scalar_t__,char const**,size_t*,char**,size_t*) ;
 int vlc_iconv_close (scalar_t__) ;
 scalar_t__ vlc_iconv_open (char*,char const*) ;
 int vlc_stream_Peek (TYPE_2__*,int const**,int) ;
 int vlc_stream_Read (TYPE_2__*,char*,int) ;
 scalar_t__ vlc_stream_Tell (TYPE_2__*) ;
 int vlc_strerror_c (int ) ;

char *vlc_stream_ReadLine( stream_t *s )
{
    stream_priv_t *priv = (stream_priv_t *)s;
    char *p_line = ((void*)0);
    int i_line = 0, i_read = 0;


    if( s->pf_read == ((void*)0) && s->pf_block == ((void*)0) )
        return ((void*)0);

    for( ;; )
    {
        char *psz_eol;
        const uint8_t *p_data;
        int i_data;
        int64_t i_pos;


        i_data = vlc_stream_Peek( s, &p_data, STREAM_PROBE_LINE );
        if( i_data <= 0 ) break;


        i_pos = vlc_stream_Tell( s );
        if( i_pos == 0 && i_data >= 2 )
        {
            const char *psz_encoding = ((void*)0);

            if( unlikely(priv->text.conv != (vlc_iconv_t)-1) )
            {
                vlc_iconv_close( priv->text.conv );
                priv->text.conv = (vlc_iconv_t)-1;
            }

            if( !memcmp( p_data, "\xFF\xFE", 2 ) )
            {
                psz_encoding = "UTF-16LE";
                priv->text.little_endian = 1;
            }
            else if( !memcmp( p_data, "\xFE\xFF", 2 ) )
            {
                psz_encoding = "UTF-16BE";
            }


            if( psz_encoding != ((void*)0) )
            {
                msg_Dbg( s, "UTF-16 BOM detected" );
                priv->text.conv = vlc_iconv_open( "UTF-8", psz_encoding );
                if( unlikely(priv->text.conv == (vlc_iconv_t)-1) )
                {
                    msg_Err( s, "iconv_open failed" );
                    goto error;
                }
                priv->text.char_width = 2;
            }
        }

        if( i_data % priv->text.char_width )
        {

            i_data = i_data - ( i_data % priv->text.char_width );
            msg_Warn( s, "the read is not i_char_width compatible");
        }

        if( i_data == 0 )
            break;


        if( priv->text.char_width == 1 )
        {

            psz_eol = memchr( p_data, '\n', i_data );
            if( psz_eol == ((void*)0) )

                psz_eol = memchr( p_data, '\r', i_data );
        }
        else
        {
            const uint8_t *p_last = p_data + i_data - priv->text.char_width;
            uint16_t eol = priv->text.little_endian ? 0x0A00 : 0x00A0;

            assert( priv->text.char_width == 2 );
            psz_eol = ((void*)0);

            for( const uint8_t *p = p_data; p <= p_last; p += 2 )
            {
                if( U16_AT( p ) == eol )
                {
                     psz_eol = (char *)p + 1;
                     break;
                }
            }

            if( psz_eol == ((void*)0) )
            {
                eol = priv->text.little_endian ? 0x0D00 : 0x00D0;
                for( const uint8_t *p = p_data; p <= p_last; p += 2 )
                {
                    if( U16_AT( p ) == eol )
                    {
                        psz_eol = (char *)p + 1;
                        break;
                    }
                }
            }
        }

        if( psz_eol )
        {
            i_data = (psz_eol - (char *)p_data) + 1;
            p_line = realloc_or_free( p_line,
                        i_line + i_data + priv->text.char_width );
            if( !p_line )
                goto error;
            i_data = vlc_stream_Read( s, &p_line[i_line], i_data );
            if( i_data <= 0 ) break;
            i_line += i_data - priv->text.char_width; ;
            i_read += i_data;


            break;
        }


        p_line = realloc_or_free( p_line,
                          i_line + STREAM_PROBE_LINE + priv->text.char_width );
        if( !p_line )
            goto error;
        i_data = vlc_stream_Read( s, &p_line[i_line], STREAM_PROBE_LINE );
        if( i_data <= 0 ) break;
        i_line += i_data;
        i_read += i_data;

        if( i_read >= STREAM_LINE_MAX )
            goto error;
    }

    if( i_read > 0 )
    {
        if( priv->text.char_width > 1 )
        {
            int i_new_line = 0;
            size_t i_in = 0, i_out = 0;
            const char * p_in = ((void*)0);
            char * p_out = ((void*)0);
            char * psz_new_line = ((void*)0);



            i_new_line = i_line * 3 / 2 + 1;
            psz_new_line = malloc( i_new_line );
            if( psz_new_line == ((void*)0) )
                goto error;
            i_in = (size_t)i_line;
            i_out = (size_t)i_new_line;
            p_in = p_line;
            p_out = psz_new_line;

            if( vlc_iconv( priv->text.conv, &p_in, &i_in, &p_out, &i_out ) == (size_t)-1 )
            {
                msg_Err( s, "conversion error: %s", vlc_strerror_c( errno ) );
                msg_Dbg( s, "original: %d, in %zu, out %zu", i_line, i_in, i_out );
            }
            free( p_line );
            p_line = psz_new_line;
            i_line = (size_t)i_new_line - i_out;
        }


        while( i_line >= 1 &&
               (p_line[i_line - 1] == '\r' || p_line[i_line - 1] == '\n') )
            i_line--;


        p_line[i_line] = '\0';

        return p_line;
    }

error:

    free( p_line );


    if( priv->text.conv != (vlc_iconv_t)(-1) )
    {
        vlc_iconv_close( priv->text.conv );
        priv->text.conv = (vlc_iconv_t)(-1);
    }
    return ((void*)0);
}
