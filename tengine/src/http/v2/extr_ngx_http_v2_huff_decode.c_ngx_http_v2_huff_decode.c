
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_v2_huff_decode_bits (int*,int*,int,int**) ;
 int ngx_log_debug1 (int ,int *,int ,char*,int) ;
 int ngx_log_debug2 (int ,int *,int ,char*,int,int) ;

ngx_int_t
ngx_http_v2_huff_decode(u_char *state, u_char *src, size_t len, u_char **dst,
    ngx_uint_t last, ngx_log_t *log)
{
    u_char *end, ch, ending;

    ch = 0;
    ending = 1;

    end = src + len;

    while (src != end) {
        ch = *src++;

        if (ngx_http_v2_huff_decode_bits(state, &ending, ch >> 4, dst)
            != NGX_OK)
        {
            ngx_log_debug2(NGX_LOG_DEBUG_HTTP, log, 0,
                           "http2 huffman decoding error at state %d: "
                           "bad code 0x%Xd", *state, ch >> 4);

            return NGX_ERROR;
        }

        if (ngx_http_v2_huff_decode_bits(state, &ending, ch & 0xf, dst)
            != NGX_OK)
        {
            ngx_log_debug2(NGX_LOG_DEBUG_HTTP, log, 0,
                           "http2 huffman decoding error at state %d: "
                           "bad code 0x%Xd", *state, ch & 0xf);

            return NGX_ERROR;
        }
    }

    if (last) {
        if (!ending) {
            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0,
                           "http2 huffman decoding error: "
                           "incomplete code 0x%Xd", ch);

            return NGX_ERROR;
        }

        *state = 0;
    }

    return NGX_OK;
}
