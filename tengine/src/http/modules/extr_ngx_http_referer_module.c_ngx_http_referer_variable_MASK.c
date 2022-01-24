#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int ngx_uint_t ;
struct TYPE_22__ {int len; char* data; } ;
typedef  TYPE_6__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_variable_value_t ;
struct TYPE_20__ {TYPE_3__* referer; } ;
struct TYPE_23__ {TYPE_5__* connection; TYPE_4__ headers_in; } ;
typedef  TYPE_7__ ngx_http_request_t ;
struct TYPE_17__ {int /*<<< orphan*/ * buckets; } ;
struct TYPE_16__ {int /*<<< orphan*/ * wc_tail; int /*<<< orphan*/ * wc_head; TYPE_1__ hash; } ;
struct TYPE_24__ {int /*<<< orphan*/ * regex; int /*<<< orphan*/ * server_name_regex; TYPE_14__ hash; scalar_t__ blocked_referer; scalar_t__ no_referer; } ;
typedef  TYPE_8__ ngx_http_referer_conf_t ;
struct TYPE_21__ {int /*<<< orphan*/  log; } ;
struct TYPE_18__ {size_t len; char* data; } ;
struct TYPE_19__ {TYPE_2__ value; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 TYPE_6__* NGX_HTTP_REFERER_NO_URI_PART ; 
 scalar_t__ NGX_OK ; 
 int FUNC0 (int,char) ; 
 TYPE_6__* FUNC1 (TYPE_14__*,int,char*,int) ; 
 TYPE_8__* FUNC2 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_referer_module ; 
 int /*<<< orphan*/  ngx_http_variable_null_value ; 
 int /*<<< orphan*/  ngx_http_variable_true_value ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*,char*,size_t) ; 
 char FUNC6 (char) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    uintptr_t data)
{
    u_char                    *p, *ref, *last;
    size_t                     len;
    ngx_str_t                 *uri;
    ngx_uint_t                 i, key;
    ngx_http_referer_conf_t   *rlcf;
    u_char                     buf[256];
#if (NGX_PCRE)
    ngx_int_t                  rc;
    ngx_str_t                  referer;
#endif

    rlcf = FUNC2(r, ngx_http_referer_module);

    if (rlcf->hash.hash.buckets == NULL
        && rlcf->hash.wc_head == NULL
        && rlcf->hash.wc_tail == NULL
#if (NGX_PCRE)
        && rlcf->regex == NULL
        && rlcf->server_name_regex == NULL
#endif
       )
    {
        goto valid;
    }

    if (r->headers_in.referer == NULL) {
        if (rlcf->no_referer) {
            goto valid;
        }

        goto invalid;
    }

    len = r->headers_in.referer->value.len;
    ref = r->headers_in.referer->value.data;

    if (len >= sizeof("http://i.ru") - 1) {
        last = ref + len;

        if (FUNC4(ref, (u_char *) "http://", 7) == 0) {
            ref += 7;
            len -= 7;
            goto valid_scheme;

        } else if (FUNC4(ref, (u_char *) "https://", 8) == 0) {
            ref += 8;
            len -= 8;
            goto valid_scheme;
        }
    }

    if (rlcf->blocked_referer) {
        goto valid;
    }

    goto invalid;

valid_scheme:

    i = 0;
    key = 0;

    for (p = ref; p < last; p++) {
        if (*p == '/' || *p == ':') {
            break;
        }

        if (i == 256) {
            goto invalid;
        }

        buf[i] = FUNC6(*p);
        key = FUNC0(key, buf[i++]);
    }

    uri = FUNC1(&rlcf->hash, key, buf, p - ref);

    if (uri) {
        goto uri;
    }

#if (NGX_PCRE)

    if (rlcf->server_name_regex) {
        referer.len = p - ref;
        referer.data = buf;

        rc = ngx_regex_exec_array(rlcf->server_name_regex, &referer,
                                  r->connection->log);

        if (rc == NGX_OK) {
            goto valid;
        }

        if (rc == NGX_ERROR) {
            return rc;
        }

        /* NGX_DECLINED */
    }

    if (rlcf->regex) {
        referer.len = len;
        referer.data = ref;

        rc = ngx_regex_exec_array(rlcf->regex, &referer, r->connection->log);

        if (rc == NGX_OK) {
            goto valid;
        }

        if (rc == NGX_ERROR) {
            return rc;
        }

        /* NGX_DECLINED */
    }

#endif

invalid:

    *v = ngx_http_variable_true_value;

    return NGX_OK;

uri:

    for ( /* void */ ; p < last; p++) {
        if (*p == '/') {
            break;
        }
    }

    len = last - p;

    if (uri == NGX_HTTP_REFERER_NO_URI_PART) {
        goto valid;
    }

    if (len < uri->len || FUNC5(uri->data, p, uri->len) != 0) {
        goto invalid;
    }

valid:

    *v = ngx_http_variable_null_value;

    return NGX_OK;
}