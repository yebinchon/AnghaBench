
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 unsigned int ULLONG_MAX ;

ngx_int_t
ngx_http_tfs_atoull(u_char *line, size_t n, unsigned long long *value)
{
    unsigned long long res;

    for (res = 0; n--; line++) {
        unsigned int val;

        if (*line < '0' || *line > '9') {
            return NGX_ERROR;
        }

        val = *line - '0';





        if (res & (~0ull << 60)) {

            if (res > ((ULLONG_MAX - val) / 10)) {
                return NGX_ERROR;
            }
        }

        res = res * 10 + val;
    }

    *value = res;

    return NGX_OK;
}
