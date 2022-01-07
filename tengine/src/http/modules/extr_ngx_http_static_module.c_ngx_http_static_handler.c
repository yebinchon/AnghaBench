
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_53__ TYPE_9__ ;
typedef struct TYPE_52__ TYPE_8__ ;
typedef struct TYPE_51__ TYPE_7__ ;
typedef struct TYPE_50__ TYPE_6__ ;
typedef struct TYPE_49__ TYPE_5__ ;
typedef struct TYPE_48__ TYPE_4__ ;
typedef struct TYPE_47__ TYPE_3__ ;
typedef struct TYPE_46__ TYPE_2__ ;
typedef struct TYPE_45__ TYPE_21__ ;
typedef struct TYPE_44__ TYPE_1__ ;
typedef struct TYPE_43__ TYPE_14__ ;
typedef struct TYPE_42__ TYPE_13__ ;
typedef struct TYPE_41__ TYPE_12__ ;
typedef struct TYPE_40__ TYPE_11__ ;
typedef struct TYPE_39__ TYPE_10__ ;


typedef char u_char ;
typedef int ngx_uint_t ;
struct TYPE_51__ {int len; char* data; } ;
typedef TYPE_7__ ngx_str_t ;
struct TYPE_52__ {int err; char* fd; scalar_t__ size; int is_directio; int mtime; int is_file; scalar_t__ is_dir; int failed; int events; int errors; int min_uses; int valid; int directio; int read_ahead; } ;
typedef TYPE_8__ ngx_open_file_info_t ;
struct TYPE_53__ {char* action; } ;
typedef TYPE_9__ ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_47__ {scalar_t__ content_length_n; int last_modified_time; int status; TYPE_21__* location; int headers; } ;
struct TYPE_49__ {scalar_t__ len; int data; } ;
struct TYPE_50__ {char* data; int len; } ;
struct TYPE_39__ {int method; int root_tested; int allow_ranges; struct TYPE_39__* main; scalar_t__ header_only; int pool; TYPE_3__ headers_out; TYPE_5__ args; TYPE_6__ uri; int error_page; TYPE_2__* connection; } ;
typedef TYPE_10__ ngx_http_request_t ;
struct TYPE_48__ {int len; } ;
struct TYPE_40__ {TYPE_4__ root; int * root_lengths; int alias; scalar_t__ log_not_found; int open_file_cache; int open_file_cache_events; int open_file_cache_errors; int open_file_cache_min_uses; int open_file_cache_valid; int directio; int read_ahead; } ;
typedef TYPE_11__ ngx_http_core_loc_conf_t ;
typedef int ngx_file_t ;
struct TYPE_41__ {int * next; TYPE_13__* buf; } ;
typedef TYPE_12__ ngx_chain_t ;
struct TYPE_42__ {scalar_t__ file_last; int in_file; int last_buf; int last_in_chain; TYPE_14__* file; scalar_t__ file_pos; } ;
typedef TYPE_13__ ngx_buf_t ;
struct TYPE_46__ {TYPE_9__* log; } ;
struct TYPE_44__ {size_t len; char* data; } ;
struct TYPE_45__ {int hash; TYPE_1__ value; int key; } ;
struct TYPE_43__ {char* fd; int directio; TYPE_9__* log; TYPE_7__ name; } ;


 scalar_t__ NGX_DECLINED ;






 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_FORBIDDEN ;
 int NGX_HTTP_GET ;
 int NGX_HTTP_HEAD ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_MOVED_PERMANENTLY ;
 scalar_t__ NGX_HTTP_NOT_ALLOWED ;
 scalar_t__ NGX_HTTP_NOT_FOUND ;
 int NGX_HTTP_OK ;
 int NGX_HTTP_POST ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 TYPE_13__* ngx_calloc_buf (int ) ;
 char* ngx_copy (char*,char*,int) ;
 int ngx_http_clear_location (TYPE_10__*) ;
 int ngx_http_core_module ;
 scalar_t__ ngx_http_discard_request_body (TYPE_10__*) ;
 TYPE_11__* ngx_http_get_module_loc_conf (TYPE_10__*,int ) ;
 char* ngx_http_map_uri_to_path (TYPE_10__*,TYPE_7__*,size_t*,int ) ;
 scalar_t__ ngx_http_output_filter (TYPE_10__*,TYPE_12__*) ;
 scalar_t__ ngx_http_send_header (TYPE_10__*) ;
 scalar_t__ ngx_http_set_content_type (TYPE_10__*) ;
 scalar_t__ ngx_http_set_disable_symlinks (TYPE_10__*,TYPE_11__*,TYPE_7__*,TYPE_8__*) ;
 scalar_t__ ngx_http_set_etag (TYPE_10__*) ;
 TYPE_21__* ngx_list_push (int *) ;
 int ngx_log_debug0 (int ,TYPE_9__*,int ,char*) ;
 int ngx_log_debug1 (int ,TYPE_9__*,int ,char*,char*) ;
 int ngx_log_error (int ,TYPE_9__*,int,char*,char*,...) ;
 int ngx_memcpy (char*,int ,scalar_t__) ;
 int ngx_memzero (TYPE_8__*,int) ;
 scalar_t__ ngx_open_cached_file (int ,TYPE_7__*,TYPE_8__*,int ) ;
 TYPE_14__* ngx_pcalloc (int ,int) ;
 char* ngx_pnalloc (int ,size_t) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_static_handler(ngx_http_request_t *r)
{
    u_char *last, *location;
    size_t root, len;
    ngx_str_t path;
    ngx_int_t rc;
    ngx_uint_t level;
    ngx_log_t *log;
    ngx_buf_t *b;
    ngx_chain_t out;
    ngx_open_file_info_t of;
    ngx_http_core_loc_conf_t *clcf;

    if (!(r->method & (NGX_HTTP_GET|NGX_HTTP_HEAD|NGX_HTTP_POST))) {
        return NGX_HTTP_NOT_ALLOWED;
    }

    if (r->uri.data[r->uri.len - 1] == '/') {
        return NGX_DECLINED;
    }

    log = r->connection->log;






    last = ngx_http_map_uri_to_path(r, &path, &root, 0);
    if (last == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    path.len = last - path.data;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0,
                   "http filename: \"%s\"", path.data);

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    ngx_memzero(&of, sizeof(ngx_open_file_info_t));

    of.read_ahead = clcf->read_ahead;
    of.directio = clcf->directio;
    of.valid = clcf->open_file_cache_valid;
    of.min_uses = clcf->open_file_cache_min_uses;
    of.errors = clcf->open_file_cache_errors;
    of.events = clcf->open_file_cache_events;

    if (ngx_http_set_disable_symlinks(r, clcf, &path, &of) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (ngx_open_cached_file(clcf->open_file_cache, &path, &of, r->pool)
        != NGX_OK)
    {
        switch (of.err) {

        case 0:
            return NGX_HTTP_INTERNAL_SERVER_ERROR;

        case 129:
        case 128:
        case 130:

            level = NGX_LOG_ERR;
            rc = NGX_HTTP_NOT_FOUND;
            break;

        case 133:





            level = NGX_LOG_ERR;
            rc = NGX_HTTP_FORBIDDEN;
            break;

        default:

            level = NGX_LOG_CRIT;
            rc = NGX_HTTP_INTERNAL_SERVER_ERROR;
            break;
        }

        if (rc != NGX_HTTP_NOT_FOUND || clcf->log_not_found) {
            ngx_log_error(level, log, of.err,
                          "%s \"%s\" failed", of.failed, path.data);
        }

        return rc;
    }

    r->root_tested = !r->error_page;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0, "http static fd: %d", of.fd);

    if (of.is_dir) {

        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, log, 0, "http dir");

        ngx_http_clear_location(r);

        r->headers_out.location = ngx_list_push(&r->headers_out.headers);
        if (r->headers_out.location == ((void*)0)) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        len = r->uri.len + 1;

        if (!clcf->alias && clcf->root_lengths == ((void*)0) && r->args.len == 0) {
            location = path.data + clcf->root.len;

            *last = '/';

        } else {
            if (r->args.len) {
                len += r->args.len + 1;
            }

            location = ngx_pnalloc(r->pool, len);
            if (location == ((void*)0)) {
                ngx_http_clear_location(r);
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }

            last = ngx_copy(location, r->uri.data, r->uri.len);

            *last = '/';

            if (r->args.len) {
                *++last = '?';
                ngx_memcpy(++last, r->args.data, r->args.len);
            }
        }

        r->headers_out.location->hash = 1;
        ngx_str_set(&r->headers_out.location->key, "Location");
        r->headers_out.location->value.len = len;
        r->headers_out.location->value.data = location;

        return NGX_HTTP_MOVED_PERMANENTLY;
    }



    if (!of.is_file) {
        ngx_log_error(NGX_LOG_CRIT, log, 0,
                      "\"%s\" is not a regular file", path.data);

        return NGX_HTTP_NOT_FOUND;
    }



    if (r->method == NGX_HTTP_POST) {
        return NGX_HTTP_NOT_ALLOWED;
    }

    rc = ngx_http_discard_request_body(r);

    if (rc != NGX_OK) {
        return rc;
    }

    log->action = "sending response to client";

    r->headers_out.status = NGX_HTTP_OK;
    r->headers_out.content_length_n = of.size;
    r->headers_out.last_modified_time = of.mtime;

    if (ngx_http_set_etag(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (ngx_http_set_content_type(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (r != r->main && of.size == 0) {
        return ngx_http_send_header(r);
    }

    r->allow_ranges = 1;



    b = ngx_calloc_buf(r->pool);
    if (b == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    b->file = ngx_pcalloc(r->pool, sizeof(ngx_file_t));
    if (b->file == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    rc = ngx_http_send_header(r);

    if (rc == NGX_ERROR || rc > NGX_OK || r->header_only) {
        return rc;
    }

    b->file_pos = 0;
    b->file_last = of.size;

    b->in_file = b->file_last ? 1: 0;
    b->last_buf = (r == r->main) ? 1: 0;
    b->last_in_chain = 1;

    b->file->fd = of.fd;
    b->file->name = path;
    b->file->log = log;
    b->file->directio = of.is_directio;

    out.buf = b;
    out.next = ((void*)0);

    return ngx_http_output_filter(r, &out);
}
