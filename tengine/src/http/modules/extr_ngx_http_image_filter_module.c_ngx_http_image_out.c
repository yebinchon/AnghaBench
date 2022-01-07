
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {int webp_quality; int wqcv; int jpeg_quality; int jqcv; } ;
typedef TYPE_3__ ngx_http_image_filter_conf_t ;
typedef int gdImagePtr ;
struct TYPE_8__ {int log; } ;






 int NGX_LOG_ERR ;
 int * gdImageGifPtr (int ,int*) ;
 int * gdImageJpegPtr (int ,int*,int ) ;
 int * gdImagePngPtr (int ,int*) ;
 int * gdImageWebpPtrEx (int ,int*,int ) ;
 TYPE_3__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 int ngx_http_image_filter_get_value (TYPE_2__*,int ,int ) ;
 int ngx_http_image_filter_module ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static u_char *
ngx_http_image_out(ngx_http_request_t *r, ngx_uint_t type, gdImagePtr img,
    int *size)
{
    char *failed;
    u_char *out;
    ngx_int_t q;
    ngx_http_image_filter_conf_t *conf;

    out = ((void*)0);

    switch (type) {

    case 130:
        conf = ngx_http_get_module_loc_conf(r, ngx_http_image_filter_module);

        q = ngx_http_image_filter_get_value(r, conf->jqcv, conf->jpeg_quality);
        if (q <= 0) {
            return ((void*)0);
        }

        out = gdImageJpegPtr(img, size, q);
        failed = "gdImageJpegPtr() failed";
        break;

    case 131:
        out = gdImageGifPtr(img, size);
        failed = "gdImageGifPtr() failed";
        break;

    case 129:
        out = gdImagePngPtr(img, size);
        failed = "gdImagePngPtr() failed";
        break;

    case 128:
        failed = "nginx was built without GD WebP support";

        break;

    default:
        failed = "unknown image type";
        break;
    }

    if (out == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0, failed);
    }

    return out;
}
