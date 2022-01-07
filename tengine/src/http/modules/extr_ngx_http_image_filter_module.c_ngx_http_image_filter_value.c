
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_3__ {int len; char* data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_IMAGE_OFFSET_BOTTOM ;
 int NGX_HTTP_IMAGE_OFFSET_LEFT ;
 int NGX_HTTP_IMAGE_OFFSET_RIGHT ;
 int NGX_HTTP_IMAGE_OFFSET_TOP ;
 scalar_t__ ngx_atoi (char*,int) ;
 scalar_t__ ngx_strncmp (char*,char*,int) ;

__attribute__((used)) static ngx_uint_t
ngx_http_image_filter_value(ngx_str_t *value)
{
    ngx_int_t n;

    if (value->len == 1 && value->data[0] == '-') {
        return (ngx_uint_t) -1;
    }

    n = ngx_atoi(value->data, value->len);

    if (n > 0) {
        return (ngx_uint_t) n;
    }
    return 0;
}
