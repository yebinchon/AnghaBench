
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;


 char const* CLUT_to_chunks ;
 size_t CLUT_to_chunks_len ;
 int GetDWBE (char const*) ;
 int VLC_FOURCC (char const,char const,char const,char const) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t const) ;

bool ts_arib_inject_png_palette( const uint8_t *p_in, size_t i_in, uint8_t **pp_out, size_t *pi_out )
{
    const uint8_t *p_data = p_in;
    const uint8_t *p_idat = ((void*)0);
    size_t i_data = i_in - 8;
    p_data += 8;
    i_data -= 8;

    while( i_data > 11 )
    {
        uint32_t i_len = GetDWBE( p_data );
        if( i_len > 0x7FFFFFFFU || i_len > i_data - 12 )
            break;

        uint32_t i_chunk = VLC_FOURCC(p_data[4], p_data[5], p_data[6], p_data[7]);
        if( i_chunk == VLC_FOURCC('I', 'D', 'A', 'T') )
        {
            p_idat = p_data;
            break;
        }

        p_data += i_len + 12;
        i_data -= i_len + 12;
    }

    if( !p_idat )
        return 0;

    {
        uint8_t *p_out = *pp_out = malloc( i_in + CLUT_to_chunks_len );
        if( !p_out )
            return 0;
        *pi_out = i_in + CLUT_to_chunks_len;

        const size_t i_head = p_data - p_in;
        memcpy( p_out, p_in, i_head );
        memcpy( &p_out[i_head], CLUT_to_chunks, CLUT_to_chunks_len );
        memcpy( &p_out[i_head + CLUT_to_chunks_len], p_data, i_in - i_head );
    }

    return 1;
}
