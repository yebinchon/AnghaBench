
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_uint_t ;


 int NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN ;
 int NGX_HTTP_TFS_FILE_NAME_LEN ;
 int* dec_table ;
 int xor_mask (int*,int,int*) ;

void
ngx_http_tfs_raw_fsname_decode(u_char *input, u_char *output)
{
    u_char buffer[NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN];
    uint32_t value;
    ngx_uint_t i, k;

    k = 0;

    if (input != ((void*)0) && output != ((void*)0)) {
        for (i = 0; i < NGX_HTTP_TFS_FILE_NAME_LEN - 2; i += 4) {
            value = (dec_table[input[i] & 0xff] << 18)
                     + (dec_table[input[i + 1] & 0xff] << 12)
                        + (dec_table[input[i + 2] & 0xff] << 6)
                           + dec_table[input[i + 3] & 0xff];
            buffer[k++] = (u_char) ((value >> 16) & 0xff);
            buffer[k++] = (u_char) ((value >> 8) & 0xff);
            buffer[k++] = (u_char) (value & 0xff);
        }
        xor_mask(buffer, NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN, output);
    }
}
