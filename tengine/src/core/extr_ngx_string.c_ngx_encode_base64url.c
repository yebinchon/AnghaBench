
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int ngx_str_t ;


 int ngx_encode_base64_internal (int *,int *,char*,int ) ;

void
ngx_encode_base64url(ngx_str_t *dst, ngx_str_t *src)
{
    static u_char basis64[] =
            "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";

    ngx_encode_base64_internal(dst, src, basis64, 0);
}
