#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_53__   TYPE_9__ ;
typedef  struct TYPE_52__   TYPE_8__ ;
typedef  struct TYPE_51__   TYPE_7__ ;
typedef  struct TYPE_50__   TYPE_6__ ;
typedef  struct TYPE_49__   TYPE_5__ ;
typedef  struct TYPE_48__   TYPE_4__ ;
typedef  struct TYPE_47__   TYPE_3__ ;
typedef  struct TYPE_46__   TYPE_2__ ;
typedef  struct TYPE_45__   TYPE_21__ ;
typedef  struct TYPE_44__   TYPE_1__ ;
typedef  struct TYPE_43__   TYPE_14__ ;
typedef  struct TYPE_42__   TYPE_13__ ;
typedef  struct TYPE_41__   TYPE_12__ ;
typedef  struct TYPE_40__   TYPE_11__ ;
typedef  struct TYPE_39__   TYPE_10__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int /*<<< orphan*/  ngx_uint_t ;
struct TYPE_51__ {int len; char* data; } ;
typedef  TYPE_7__ ngx_str_t ;
struct TYPE_52__ {int err; char* fd; scalar_t__ size; int /*<<< orphan*/  is_directio; int /*<<< orphan*/  mtime; int /*<<< orphan*/  is_file; scalar_t__ is_dir; int /*<<< orphan*/  failed; int /*<<< orphan*/  events; int /*<<< orphan*/  errors; int /*<<< orphan*/  min_uses; int /*<<< orphan*/  valid; int /*<<< orphan*/  directio; int /*<<< orphan*/  read_ahead; } ;
typedef  TYPE_8__ ngx_open_file_info_t ;
struct TYPE_53__ {char* action; } ;
typedef  TYPE_9__ ngx_log_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_47__ {scalar_t__ content_length_n; int /*<<< orphan*/  last_modified_time; int /*<<< orphan*/  status; TYPE_21__* location; int /*<<< orphan*/  headers; } ;
struct TYPE_49__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_50__ {char* data; int len; } ;
struct TYPE_39__ {int method; int root_tested; int allow_ranges; struct TYPE_39__* main; scalar_t__ header_only; int /*<<< orphan*/  pool; TYPE_3__ headers_out; TYPE_5__ args; TYPE_6__ uri; int /*<<< orphan*/  error_page; TYPE_2__* connection; } ;
typedef  TYPE_10__ ngx_http_request_t ;
struct TYPE_48__ {int len; } ;
struct TYPE_40__ {TYPE_4__ root; int /*<<< orphan*/ * root_lengths; int /*<<< orphan*/  alias; scalar_t__ log_not_found; int /*<<< orphan*/  open_file_cache; int /*<<< orphan*/  open_file_cache_events; int /*<<< orphan*/  open_file_cache_errors; int /*<<< orphan*/  open_file_cache_min_uses; int /*<<< orphan*/  open_file_cache_valid; int /*<<< orphan*/  directio; int /*<<< orphan*/  read_ahead; } ;
typedef  TYPE_11__ ngx_http_core_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_file_t ;
struct TYPE_41__ {int /*<<< orphan*/ * next; TYPE_13__* buf; } ;
typedef  TYPE_12__ ngx_chain_t ;
struct TYPE_42__ {scalar_t__ file_last; int in_file; int last_buf; int last_in_chain; TYPE_14__* file; scalar_t__ file_pos; } ;
typedef  TYPE_13__ ngx_buf_t ;
struct TYPE_46__ {TYPE_9__* log; } ;
struct TYPE_44__ {size_t len; char* data; } ;
struct TYPE_45__ {int hash; TYPE_1__ value; int /*<<< orphan*/  key; } ;
struct TYPE_43__ {char* fd; int /*<<< orphan*/  directio; TYPE_9__* log; TYPE_7__ name; } ;

/* Variables and functions */
 scalar_t__ NGX_DECLINED ; 
#define  NGX_EACCES 133 
#define  NGX_ELOOP 132 
#define  NGX_EMLINK 131 
#define  NGX_ENAMETOOLONG 130 
#define  NGX_ENOENT 129 
#define  NGX_ENOTDIR 128 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_FORBIDDEN ; 
 int NGX_HTTP_GET ; 
 int NGX_HTTP_HEAD ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_MOVED_PERMANENTLY ; 
 scalar_t__ NGX_HTTP_NOT_ALLOWED ; 
 scalar_t__ NGX_HTTP_NOT_FOUND ; 
 int /*<<< orphan*/  NGX_HTTP_OK ; 
 int NGX_HTTP_POST ; 
 int /*<<< orphan*/  NGX_LOG_CRIT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 TYPE_13__* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 scalar_t__ FUNC3 (TYPE_10__*) ; 
 TYPE_11__* FUNC4 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_10__*,TYPE_7__*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_10__*,TYPE_12__*) ; 
 scalar_t__ FUNC7 (TYPE_10__*) ; 
 scalar_t__ FUNC8 (TYPE_10__*) ; 
 scalar_t__ FUNC9 (TYPE_10__*,TYPE_11__*,TYPE_7__*,TYPE_8__*) ; 
 scalar_t__ FUNC10 (TYPE_10__*) ; 
 TYPE_21__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_9__*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,TYPE_7__*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_14__* FUNC18 (int /*<<< orphan*/ ,int) ; 
 char* FUNC19 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC21(ngx_http_request_t *r)
{
    u_char                    *last, *location;
    size_t                     root, len;
    ngx_str_t                  path;
    ngx_int_t                  rc;
    ngx_uint_t                 level;
    ngx_log_t                 *log;
    ngx_buf_t                 *b;
    ngx_chain_t                out;
    ngx_open_file_info_t       of;
    ngx_http_core_loc_conf_t  *clcf;

    if (!(r->method & (NGX_HTTP_GET|NGX_HTTP_HEAD|NGX_HTTP_POST))) {
        return NGX_HTTP_NOT_ALLOWED;
    }

    if (r->uri.data[r->uri.len - 1] == '/') {
        return NGX_DECLINED;
    }

    log = r->connection->log;

    /*
     * ngx_http_map_uri_to_path() allocates memory for terminating '\0'
     * so we do not need to reserve memory for '/' for possible redirect
     */

    last = FUNC5(r, &path, &root, 0);
    if (last == NULL) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    path.len = last - path.data;

    FUNC13(NGX_LOG_DEBUG_HTTP, log, 0,
                   "http filename: \"%s\"", path.data);

    clcf = FUNC4(r, ngx_http_core_module);

    FUNC16(&of, sizeof(ngx_open_file_info_t));

    of.read_ahead = clcf->read_ahead;
    of.directio = clcf->directio;
    of.valid = clcf->open_file_cache_valid;
    of.min_uses = clcf->open_file_cache_min_uses;
    of.errors = clcf->open_file_cache_errors;
    of.events = clcf->open_file_cache_events;

    if (FUNC9(r, clcf, &path, &of) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (FUNC17(clcf->open_file_cache, &path, &of, r->pool)
        != NGX_OK)
    {
        switch (of.err) {

        case 0:
            return NGX_HTTP_INTERNAL_SERVER_ERROR;

        case NGX_ENOENT:
        case NGX_ENOTDIR:
        case NGX_ENAMETOOLONG:

            level = NGX_LOG_ERR;
            rc = NGX_HTTP_NOT_FOUND;
            break;

        case NGX_EACCES:
#if (NGX_HAVE_OPENAT)
        case NGX_EMLINK:
        case NGX_ELOOP:
#endif

            level = NGX_LOG_ERR;
            rc = NGX_HTTP_FORBIDDEN;
            break;

        default:

            level = NGX_LOG_CRIT;
            rc = NGX_HTTP_INTERNAL_SERVER_ERROR;
            break;
        }

        if (rc != NGX_HTTP_NOT_FOUND || clcf->log_not_found) {
            FUNC14(level, log, of.err,
                          "%s \"%s\" failed", of.failed, path.data);
        }

        return rc;
    }

    r->root_tested = !r->error_page;

    FUNC13(NGX_LOG_DEBUG_HTTP, log, 0, "http static fd: %d", of.fd);

    if (of.is_dir) {

        FUNC12(NGX_LOG_DEBUG_HTTP, log, 0, "http dir");

        FUNC2(r);

        r->headers_out.location = FUNC11(&r->headers_out.headers);
        if (r->headers_out.location == NULL) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        len = r->uri.len + 1;

        if (!clcf->alias && clcf->root_lengths == NULL && r->args.len == 0) {
            location = path.data + clcf->root.len;

            *last = '/';

        } else {
            if (r->args.len) {
                len += r->args.len + 1;
            }

            location = FUNC19(r->pool, len);
            if (location == NULL) {
                FUNC2(r);
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }

            last = FUNC1(location, r->uri.data, r->uri.len);

            *last = '/';

            if (r->args.len) {
                *++last = '?';
                FUNC15(++last, r->args.data, r->args.len);
            }
        }

        r->headers_out.location->hash = 1;
        FUNC20(&r->headers_out.location->key, "Location");
        r->headers_out.location->value.len = len;
        r->headers_out.location->value.data = location;

        return NGX_HTTP_MOVED_PERMANENTLY;
    }

#if !(NGX_WIN32) /* the not regular files are probably Unix specific */

    if (!of.is_file) {
        FUNC14(NGX_LOG_CRIT, log, 0,
                      "\"%s\" is not a regular file", path.data);

        return NGX_HTTP_NOT_FOUND;
    }

#endif

    if (r->method == NGX_HTTP_POST) {
        return NGX_HTTP_NOT_ALLOWED;
    }

    rc = FUNC3(r);

    if (rc != NGX_OK) {
        return rc;
    }

    log->action = "sending response to client";

    r->headers_out.status = NGX_HTTP_OK;
    r->headers_out.content_length_n = of.size;
    r->headers_out.last_modified_time = of.mtime;

    if (FUNC10(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (FUNC8(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (r != r->main && of.size == 0) {
        return FUNC7(r);
    }

    r->allow_ranges = 1;

    /* we need to allocate all before the header would be sent */

    b = FUNC0(r->pool);
    if (b == NULL) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    b->file = FUNC18(r->pool, sizeof(ngx_file_t));
    if (b->file == NULL) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    rc = FUNC7(r);

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
    out.next = NULL;

    return FUNC6(r, &out);
}