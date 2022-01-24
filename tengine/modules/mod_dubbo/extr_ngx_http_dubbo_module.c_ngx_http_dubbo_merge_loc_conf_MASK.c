#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int ignore_headers; int next_upstream; int /*<<< orphan*/ * upstream; int /*<<< orphan*/  ssl; int /*<<< orphan*/  ssl_verify; int /*<<< orphan*/  ssl_server_name; int /*<<< orphan*/ * ssl_name; int /*<<< orphan*/  ssl_session_reuse; int /*<<< orphan*/  intercept_errors; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  next_upstream_timeout; int /*<<< orphan*/  read_timeout; int /*<<< orphan*/  send_timeout; int /*<<< orphan*/  connect_timeout; int /*<<< orphan*/  next_upstream_tries; int /*<<< orphan*/  socket_keepalive; int /*<<< orphan*/  local; } ;
struct TYPE_8__ {int /*<<< orphan*/  heartbeat_interval; int /*<<< orphan*/  ups_info; int /*<<< orphan*/  pass_body; int /*<<< orphan*/  pass_all_headers; int /*<<< orphan*/  args_in; int /*<<< orphan*/  method; int /*<<< orphan*/  service_name; TYPE_4__ upstream; } ;
typedef  TYPE_1__ ngx_http_dubbo_loc_conf_t ;
struct TYPE_9__ {int /*<<< orphan*/ * handler; scalar_t__ lmt_excpt; scalar_t__ noname; } ;
typedef  TYPE_2__ ngx_http_core_loc_conf_t ;
struct TYPE_10__ {int max_size; char* name; int /*<<< orphan*/  bucket_size; } ;
typedef  TYPE_3__ ngx_hash_init_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 int NGX_CONF_BITMASK_SET ; 
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int NGX_HTTP_UPSTREAM_FT_ERROR ; 
 int NGX_HTTP_UPSTREAM_FT_OFF ; 
 int NGX_HTTP_UPSTREAM_FT_TIMEOUT ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_cacheline_size ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 int /*<<< orphan*/ * ngx_http_dubbo_handler ; 
 int /*<<< orphan*/  ngx_http_dubbo_hide_headers ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ ngx_pagesize ; 

__attribute__((used)) static char *
FUNC10(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_hash_init_t            hash;
    ngx_http_core_loc_conf_t  *clcf;

    ngx_http_dubbo_loc_conf_t *prev = parent;
    ngx_http_dubbo_loc_conf_t *conf = child;

    FUNC3(conf->upstream.local,
            prev->upstream.local, NULL);

    FUNC7(conf->upstream.socket_keepalive,
            prev->upstream.socket_keepalive, 0);

    FUNC6(conf->upstream.next_upstream_tries,
            prev->upstream.next_upstream_tries, 0);

    FUNC2(conf->upstream.connect_timeout,
            prev->upstream.connect_timeout, 60000);

    FUNC2(conf->upstream.send_timeout,
            prev->upstream.send_timeout, 60000);

    FUNC2(conf->upstream.read_timeout,
            prev->upstream.read_timeout, 60000);

    FUNC2(conf->upstream.next_upstream_timeout,
            prev->upstream.next_upstream_timeout, 0);

    FUNC4(conf->upstream.buffer_size,
            prev->upstream.buffer_size,
            (size_t) ngx_pagesize);

    FUNC1(conf->upstream.ignore_headers,
            prev->upstream.ignore_headers,
            NGX_CONF_BITMASK_SET);

    FUNC1(conf->upstream.next_upstream,
            prev->upstream.next_upstream,
            (NGX_CONF_BITMASK_SET
             |NGX_HTTP_UPSTREAM_FT_ERROR
             |NGX_HTTP_UPSTREAM_FT_TIMEOUT));

    if (conf->upstream.next_upstream & NGX_HTTP_UPSTREAM_FT_OFF) {
        conf->upstream.next_upstream = NGX_CONF_BITMASK_SET
            |NGX_HTTP_UPSTREAM_FT_OFF;
    }

    FUNC7(conf->upstream.intercept_errors,
            prev->upstream.intercept_errors, 0);

#if (NGX_HTTP_SSL)

    ngx_conf_merge_value(conf->upstream.ssl_session_reuse,
            prev->upstream.ssl_session_reuse, 1);

    if (conf->upstream.ssl_name == NULL) {
        conf->upstream.ssl_name = prev->upstream.ssl_name;
    }

    ngx_conf_merge_value(conf->upstream.ssl_server_name,
            prev->upstream.ssl_server_name, 0);
    ngx_conf_merge_value(conf->upstream.ssl_verify,
            prev->upstream.ssl_verify, 0);

#endif

    hash.max_size = 512;
    hash.bucket_size = FUNC0(64, ngx_cacheline_size);
    hash.name = "dubbo_headers_hash";

    if (FUNC9(cf, &conf->upstream,
                &prev->upstream, ngx_http_dubbo_hide_headers, &hash)
            != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    clcf = FUNC8(cf, ngx_http_core_module);

    if (clcf->noname && conf->upstream.upstream == NULL) {
        conf->upstream.upstream = prev->upstream.upstream;
#if (NGX_HTTP_SSL)
        conf->upstream.ssl = prev->upstream.ssl;
#endif
    }

    if (clcf->lmt_excpt && clcf->handler == NULL && conf->upstream.upstream) {
        clcf->handler = ngx_http_dubbo_handler;
    }

    FUNC5(conf->service_name, prev->service_name, "");
    FUNC5(conf->method, prev->method, "");

    FUNC3(conf->args_in, prev->args_in, NULL);
    FUNC7(conf->pass_all_headers, prev->pass_all_headers, 1);
    FUNC7(conf->pass_body, prev->pass_body, 1);
    FUNC7(conf->ups_info, prev->ups_info, 0);

    FUNC2(conf->heartbeat_interval,
                              prev->heartbeat_interval, 60000);

    return NGX_CONF_OK;
}