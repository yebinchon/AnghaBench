#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {int /*<<< orphan*/  webp_quality; int /*<<< orphan*/  wqcv; int /*<<< orphan*/  jpeg_quality; int /*<<< orphan*/  jqcv; } ;
typedef  TYPE_3__ ngx_http_image_filter_conf_t ;
typedef  int /*<<< orphan*/  gdImagePtr ;
struct TYPE_8__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
#define  NGX_HTTP_IMAGE_GIF 131 
#define  NGX_HTTP_IMAGE_JPEG 130 
#define  NGX_HTTP_IMAGE_PNG 129 
#define  NGX_HTTP_IMAGE_WEBP 128 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_image_filter_module ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u_char *
FUNC7(ngx_http_request_t *r, ngx_uint_t type, gdImagePtr img,
    int *size)
{
    char                          *failed;
    u_char                        *out;
    ngx_int_t                      q;
    ngx_http_image_filter_conf_t  *conf;

    out = NULL;

    switch (type) {

    case NGX_HTTP_IMAGE_JPEG:
        conf = FUNC4(r, ngx_http_image_filter_module);

        q = FUNC5(r, conf->jqcv, conf->jpeg_quality);
        if (q <= 0) {
            return NULL;
        }

        out = FUNC1(img, size, q);
        failed = "gdImageJpegPtr() failed";
        break;

    case NGX_HTTP_IMAGE_GIF:
        out = FUNC0(img, size);
        failed = "gdImageGifPtr() failed";
        break;

    case NGX_HTTP_IMAGE_PNG:
        out = FUNC2(img, size);
        failed = "gdImagePngPtr() failed";
        break;

    case NGX_HTTP_IMAGE_WEBP:
#if (NGX_HAVE_GD_WEBP)
        conf = ngx_http_get_module_loc_conf(r, ngx_http_image_filter_module);

        q = ngx_http_image_filter_get_value(r, conf->wqcv, conf->webp_quality);
        if (q <= 0) {
            return NULL;
        }

        out = gdImageWebpPtrEx(img, size, q);
        failed = "gdImageWebpPtrEx() failed";
#else
        failed = "nginx was built without GD WebP support";
#endif
        break;

    default:
        failed = "unknown image type";
        break;
    }

    if (out == NULL) {
        FUNC6(NGX_LOG_ERR, r->connection->log, 0, failed);
    }

    return out;
}