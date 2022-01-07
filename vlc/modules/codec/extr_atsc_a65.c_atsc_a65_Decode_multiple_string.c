
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ psz_lang; } ;
typedef TYPE_1__ atsc_a65_handle_t ;


 scalar_t__ const ATSC_A65_COMPRESSION_NONE ;
 int BUF_ADVANCE (scalar_t__ const) ;
 int convert_encoding_set (TYPE_1__*,scalar_t__ const*,scalar_t__ const,char**,size_t*,scalar_t__ const) ;
 int free (char*) ;
 scalar_t__ memcmp (scalar_t__ const*,scalar_t__,int) ;

char * atsc_a65_Decode_multiple_string( atsc_a65_handle_t *p_handle, const uint8_t *p_buffer, size_t i_buffer )
{
    char *psz_res = ((void*)0);
    size_t i_resmin1 = 0;

    if( i_buffer < 1 )
        return ((void*)0);

    uint8_t i_nb = p_buffer[0];
    BUF_ADVANCE(1);

    for( ; i_nb > 0; i_nb-- )
    {
        if( i_buffer < 4 )
            goto error;

        bool b_skip = ( p_handle->psz_lang && memcmp(p_buffer, p_handle->psz_lang, 3) );
        BUF_ADVANCE(3);

        uint8_t i_seg = p_buffer[0];
        BUF_ADVANCE(1);
        for( ; i_seg > 0; i_seg-- )
        {
            if( i_buffer < 3 )
                goto error;

            const uint8_t i_compression = p_buffer[0];
            const uint8_t i_mode = p_buffer[1];
            const uint8_t i_bytes = p_buffer[2];
            BUF_ADVANCE(3);

            if( i_buffer < i_bytes )
                goto error;

            if( i_compression != ATSC_A65_COMPRESSION_NONE )
            {
                b_skip = 1;
            }

            if( !b_skip )
            {
                (void) convert_encoding_set( p_handle, p_buffer, i_bytes,
                                             &psz_res, &i_resmin1, i_mode );
            }

            BUF_ADVANCE(i_bytes);
        }
    }

    return psz_res;

error:
    free( psz_res );
    return ((void*)0);
}
