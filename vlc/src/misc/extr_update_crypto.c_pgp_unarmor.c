
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 long crc_octets (int*,int) ;
 size_t strcspn (char const*,char*) ;
 int strncmp (char const*,char*,int) ;
 int vlc_b64_decode_binary_to_buffer (int*,int,char const*) ;

__attribute__((used)) static int pgp_unarmor( const char *p_ibuf, size_t i_ibuf_len,
                        uint8_t *p_obuf, size_t i_obuf_len )
{
    const char *p_ipos = p_ibuf;
    uint8_t *p_opos = p_obuf;
    int i_end = 0;
    int i_header_skipped = 0;

    while( !i_end && p_ipos < p_ibuf + i_ibuf_len && *p_ipos != '=' )
    {
        if( *p_ipos == '\r' || *p_ipos == '\n' )
        {
            p_ipos++;
            continue;
        }

        size_t i_line_len = strcspn( p_ipos, "\r\n" );
        if( i_line_len == 0 )
            continue;

        if( !i_header_skipped )
        {
            if( !strncmp( p_ipos, "-----BEGIN PGP", 14 ) )
                i_header_skipped = 1;

            p_ipos += i_line_len + 1;
            continue;
        }

        if( !strncmp( p_ipos, "Version:", 8 ) )
        {
            p_ipos += i_line_len + 1;
            continue;
        }

        if( p_ipos[i_line_len - 1] == '=' )
        {
            i_end = 1;
        }

        p_opos += vlc_b64_decode_binary_to_buffer( p_opos,
                        p_obuf - p_opos + i_obuf_len, p_ipos );
        p_ipos += i_line_len + 1;
    }


    if( p_ipos + 5 > p_ibuf + i_ibuf_len || *p_ipos++ != '=' )
        return 0;

    uint8_t p_crc[3];
    if( vlc_b64_decode_binary_to_buffer( p_crc, 3, p_ipos ) != 3 )
        return 0;

    long l_crc = crc_octets( p_obuf, p_opos - p_obuf );
    long l_crc2 = ( 0 << 24 ) + ( p_crc[0] << 16 ) + ( p_crc[1] << 8 ) + p_crc[2];

    return l_crc2 == l_crc ? p_opos - p_obuf : 0;
}
