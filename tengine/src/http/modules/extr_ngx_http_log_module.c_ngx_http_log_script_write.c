
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ssize_t ;
struct TYPE_27__ {char* data; int len; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_28__ {int test_dir; int test_only; scalar_t__ err; int log; char* fd; int failed; int directio; int min_uses; int valid; int is_dir; int events; int errors; } ;
typedef TYPE_5__ ngx_open_file_info_t ;
struct TYPE_29__ {TYPE_3__* connection; int pool; int root_tested; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_30__ {TYPE_2__* values; TYPE_1__* lengths; } ;
typedef TYPE_7__ ngx_http_log_script_t ;
struct TYPE_31__ {int open_file_cache; int open_file_cache_min_uses; int open_file_cache_valid; } ;
typedef TYPE_8__ ngx_http_log_loc_conf_t ;
struct TYPE_32__ {int open_file_cache; int open_file_cache_events; int open_file_cache_errors; int open_file_cache_min_uses; int open_file_cache_valid; } ;
typedef TYPE_9__ ngx_http_core_loc_conf_t ;
struct TYPE_26__ {int log; } ;
struct TYPE_25__ {int elts; } ;
struct TYPE_24__ {int elts; } ;


 int NGX_ENOTDIR ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int NGX_OPEN_FILE_DIRECTIO_OFF ;
 int ngx_errno ;
 int ngx_http_core_module ;
 void* ngx_http_get_module_loc_conf (TYPE_6__*,int ) ;
 int ngx_http_log_module ;
 int * ngx_http_map_uri_to_path (TYPE_6__*,TYPE_4__*,size_t*,int ) ;
 int * ngx_http_script_run (TYPE_6__*,TYPE_4__*,int ,int,int ) ;
 scalar_t__ ngx_http_set_disable_symlinks (TYPE_6__*,TYPE_9__*,TYPE_4__*,TYPE_5__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,char*) ;
 int ngx_log_error (int ,int ,scalar_t__,char*,char*,...) ;
 int ngx_memzero (TYPE_5__*,int) ;
 scalar_t__ ngx_open_cached_file (int ,TYPE_4__*,TYPE_5__*,int ) ;
 size_t ngx_write_fd (char*,char*,size_t) ;

__attribute__((used)) static ssize_t
ngx_http_log_script_write(ngx_http_request_t *r, ngx_http_log_script_t *script,
    u_char **name, u_char *buf, size_t len)
{
    size_t root;
    ssize_t n;
    ngx_str_t log, path;
    ngx_open_file_info_t of;
    ngx_http_log_loc_conf_t *llcf;
    ngx_http_core_loc_conf_t *clcf;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (!r->root_tested) {



        if (ngx_http_map_uri_to_path(r, &path, &root, 0) == ((void*)0)) {

            return len;
        }

        path.data[root] = '\0';

        ngx_memzero(&of, sizeof(ngx_open_file_info_t));

        of.valid = clcf->open_file_cache_valid;
        of.min_uses = clcf->open_file_cache_min_uses;
        of.test_dir = 1;
        of.test_only = 1;
        of.errors = clcf->open_file_cache_errors;
        of.events = clcf->open_file_cache_events;

        if (ngx_http_set_disable_symlinks(r, clcf, &path, &of) != NGX_OK) {

            return len;
        }

        if (ngx_open_cached_file(clcf->open_file_cache, &path, &of, r->pool)
            != NGX_OK)
        {
            if (of.err == 0) {

                return len;
            }

            ngx_log_error(NGX_LOG_ERR, r->connection->log, of.err,
                          "testing \"%s\" existence failed", path.data);


            return len;
        }

        if (!of.is_dir) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, NGX_ENOTDIR,
                          "testing \"%s\" existence failed", path.data);


            return len;
        }
    }

    if (ngx_http_script_run(r, &log, script->lengths->elts, 1,
                            script->values->elts)
        == ((void*)0))
    {

        return len;
    }

    log.data[log.len - 1] = '\0';
    *name = log.data;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http log \"%s\"", log.data);

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_log_module);

    ngx_memzero(&of, sizeof(ngx_open_file_info_t));

    of.log = 1;
    of.valid = llcf->open_file_cache_valid;
    of.min_uses = llcf->open_file_cache_min_uses;
    of.directio = NGX_OPEN_FILE_DIRECTIO_OFF;

    if (ngx_http_set_disable_symlinks(r, clcf, &log, &of) != NGX_OK) {

        return len;
    }

    if (ngx_open_cached_file(llcf->open_file_cache, &log, &of, r->pool)
        != NGX_OK)
    {
        if (of.err == 0) {

            return len;
        }

        ngx_log_error(NGX_LOG_CRIT, r->connection->log, ngx_errno,
                      "%s \"%s\" failed", of.failed, log.data);

        return len;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http log #%d", of.fd);

    n = ngx_write_fd(of.fd, buf, len);

    return n;
}
