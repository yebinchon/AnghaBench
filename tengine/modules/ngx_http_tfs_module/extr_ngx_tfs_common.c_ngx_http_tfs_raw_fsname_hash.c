
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef scalar_t__ int32_t ;



int32_t
ngx_http_tfs_raw_fsname_hash(const u_char *str, const int32_t len)
{
    int32_t h, i;

    h = 0;

    if (str == ((void*)0) || len <=0) {
        return 0;
    }

    for (i = 0; i < len; ++i) {
        h += str[i];
        h *= 7;
    }

    return (h | 0x80000000);
}
