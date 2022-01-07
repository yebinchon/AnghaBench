
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_uint_t ;


 int NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN ;
 int* enc_table ;
 int xor_mask (int*,int,int*) ;

void
ngx_http_tfs_raw_fsname_encode(u_char *input, u_char *output)
{
    u_char buffer[NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN];
    uint32_t value;
    ngx_uint_t i, k;

    k = 0;

    if (input != ((void*)0) && output != ((void*)0)) {
        xor_mask(input, NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN, buffer);
        for (i = 0; i < NGX_HTTP_TFS_FILE_NAME_EXCEPT_SUFFIX_LEN; i += 3) {
            value = ((buffer[i] << 16) & 0xff0000)
                     + ((buffer[i + 1] << 8) & 0xff00) + (buffer[i + 2] & 0xff);
            output[k++] = enc_table[value >> 18];
            output[k++] = enc_table[(value >> 12) & 0x3f];
            output[k++] = enc_table[(value >> 6) & 0x3f];
            output[k++] = enc_table[value & 0x3f];
        }
    }
}
