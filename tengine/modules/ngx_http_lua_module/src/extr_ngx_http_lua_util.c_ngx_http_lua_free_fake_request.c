
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_log_t ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_8__ {TYPE_2__* connection; TYPE_1__ request_line; TYPE_4__* cleanup; int * pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_9__ {struct TYPE_9__* next; int data; int (* handler ) (int ) ;} ;
typedef TYPE_4__ ngx_http_cleanup_t ;
struct TYPE_7__ {int destroyed; int * log; } ;


 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug0 (int ,int *,int ,char*) ;
 int ngx_log_error (int ,int *,int ,char*) ;
 int stub1 (int ) ;

void
ngx_http_lua_free_fake_request(ngx_http_request_t *r)
{
    ngx_log_t *log;
    ngx_http_cleanup_t *cln;

    log = r->connection->log;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, log, 0, "http lua close fake "
                   "request");

    if (r->pool == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, log, 0, "http lua fake request "
                      "already closed");
        return;
    }

    cln = r->cleanup;
    r->cleanup = ((void*)0);

    while (cln) {
        if (cln->handler) {
            cln->handler(cln->data);
        }

        cln = cln->next;
    }

    r->request_line.len = 0;

    r->connection->destroyed = 1;
}
