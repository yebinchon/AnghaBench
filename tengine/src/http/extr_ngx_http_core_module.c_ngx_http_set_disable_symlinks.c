
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_8__ {scalar_t__ len; char* data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_9__ {int disable_symlinks_from; int disable_symlinks; } ;
typedef TYPE_2__ ngx_open_file_info_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_10__ {int * disable_symlinks_from; int disable_symlinks; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;


 int NGX_DISABLE_SYMLINKS_OFF ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_complex_value (int *,int *,TYPE_1__*) ;
 scalar_t__ ngx_memcmp (char*,char*,scalar_t__) ;

ngx_int_t
ngx_http_set_disable_symlinks(ngx_http_request_t *r,
    ngx_http_core_loc_conf_t *clcf, ngx_str_t *path, ngx_open_file_info_t *of)
{
    return NGX_OK;
}
