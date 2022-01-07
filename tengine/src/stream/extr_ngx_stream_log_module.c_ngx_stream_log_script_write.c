
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ssize_t ;
struct TYPE_21__ {TYPE_3__* connection; } ;
typedef TYPE_4__ ngx_stream_session_t ;
struct TYPE_22__ {int open_file_cache; int open_file_cache_min_uses; int open_file_cache_valid; } ;
typedef TYPE_5__ ngx_stream_log_srv_conf_t ;
struct TYPE_23__ {TYPE_2__* values; TYPE_1__* lengths; } ;
typedef TYPE_6__ ngx_stream_log_script_t ;
struct TYPE_24__ {char* data; int len; } ;
typedef TYPE_7__ ngx_str_t ;
struct TYPE_25__ {int log; scalar_t__ err; char* fd; int failed; int directio; int min_uses; int valid; } ;
typedef TYPE_8__ ngx_open_file_info_t ;
struct TYPE_20__ {int log; int pool; } ;
struct TYPE_19__ {int elts; } ;
struct TYPE_18__ {int elts; } ;


 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_STREAM ;
 scalar_t__ NGX_OK ;
 int NGX_OPEN_FILE_DIRECTIO_OFF ;
 int ngx_errno ;
 int ngx_log_debug1 (int ,int ,int ,char*,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int ,char*) ;
 int ngx_memzero (TYPE_8__*,int) ;
 scalar_t__ ngx_open_cached_file (int ,TYPE_7__*,TYPE_8__*,int ) ;
 TYPE_5__* ngx_stream_get_module_srv_conf (TYPE_4__*,int ) ;
 int ngx_stream_log_module ;
 int * ngx_stream_script_run (TYPE_4__*,TYPE_7__*,int ,int,int ) ;
 size_t ngx_write_fd (char*,char*,size_t) ;

__attribute__((used)) static ssize_t
ngx_stream_log_script_write(ngx_stream_session_t *s,
    ngx_stream_log_script_t *script, u_char **name, u_char *buf, size_t len)
{
    ssize_t n;
    ngx_str_t log;
    ngx_open_file_info_t of;
    ngx_stream_log_srv_conf_t *lscf;

    if (ngx_stream_script_run(s, &log, script->lengths->elts, 1,
                              script->values->elts)
        == ((void*)0))
    {

        return len;
    }

    log.data[log.len - 1] = '\0';
    *name = log.data;

    ngx_log_debug1(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "stream log \"%s\"", log.data);

    lscf = ngx_stream_get_module_srv_conf(s, ngx_stream_log_module);

    ngx_memzero(&of, sizeof(ngx_open_file_info_t));

    of.log = 1;
    of.valid = lscf->open_file_cache_valid;
    of.min_uses = lscf->open_file_cache_min_uses;
    of.directio = NGX_OPEN_FILE_DIRECTIO_OFF;

    if (ngx_open_cached_file(lscf->open_file_cache, &log, &of,
                             s->connection->pool)
        != NGX_OK)
    {
        if (of.err == 0) {

            return len;
        }

        ngx_log_error(NGX_LOG_CRIT, s->connection->log, ngx_errno,
                      "%s \"%s\" failed", of.failed, log.data);

        return len;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "stream log #%d", of.fd);

    n = ngx_write_fd(of.fd, buf, len);

    return n;
}
