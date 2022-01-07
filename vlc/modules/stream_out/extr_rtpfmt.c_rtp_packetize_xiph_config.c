
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef char uint8_t ;
typedef int uint32_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_5__ {char* p_buffer; int i_dts; } ;
typedef TYPE_1__ block_t ;


 int SetDWBE (char*,int) ;
 int SetWBE (char*,int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int XIPH_IDENT ;
 int __MIN (int,int) ;
 int assert (int ) ;
 TYPE_1__* block_Alloc (int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,int) ;
 int rtp_mtu (int *) ;
 int rtp_packetize_common (int *,TYPE_1__*,int ,int ) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;
 char* strchr (char*,char) ;
 char* strstr (char const*,char*) ;
 int vlc_b64_decode_binary (char**,char*) ;

int rtp_packetize_xiph_config( sout_stream_id_sys_t *id, const char *fmtp,
                               vlc_tick_t i_pts )
{
    if (fmtp == ((void*)0))
        return VLC_EGENERIC;


    char *start = strstr(fmtp, "configuration=");
    assert(start != ((void*)0));
    start += sizeof("configuration=") - 1;
    char *end = strchr(start, ';');
    assert(end != ((void*)0));
    size_t len = end - start;

    char *b64 = malloc(len + 1);
    if(!b64)
        return VLC_EGENERIC;

    memcpy(b64, start, len);
    b64[len] = '\0';

    int i_max = rtp_mtu (id) - 6;

    uint8_t *p_orig, *p_data;
    int i_data;

    i_data = vlc_b64_decode_binary(&p_orig, b64);
    free(b64);
    if (i_data <= 9)
    {
        free(p_orig);
        return VLC_EGENERIC;
    }
    p_data = p_orig + 9;
    i_data -= 9;

    int i_count = ( i_data + i_max - 1 ) / i_max;

    for( int i = 0; i < i_count; i++ )
    {
        int i_payload = __MIN( i_max, i_data );
        block_t *out = block_Alloc( 18 + i_payload );

        unsigned fragtype, numpkts;
        if (i_count == 1)
        {
            fragtype = 0;
            numpkts = 1;
        }
        else
        {
            numpkts = 0;
            if (i == 0)
                fragtype = 1;
            else if (i == i_count - 1)
                fragtype = 3;
            else
                fragtype = 2;
        }

        uint32_t header = ((XIPH_IDENT & 0xffffff) << 8) |
                          (fragtype << 6) | (1 << 4) | numpkts;


        rtp_packetize_common( id, out, 0, i_pts );

        SetDWBE( out->p_buffer + 12, header);
        SetWBE( out->p_buffer + 16, i_payload);
        memcpy( &out->p_buffer[18], p_data, i_payload );

        out->i_dts = i_pts;

        rtp_packetize_send( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    free(p_orig);

    return VLC_SUCCESS;
}
