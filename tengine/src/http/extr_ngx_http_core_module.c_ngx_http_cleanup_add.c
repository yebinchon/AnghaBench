
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* connection; TYPE_3__* cleanup; int pool; struct TYPE_8__* main; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {struct TYPE_9__* next; int * handler; int * data; } ;
typedef TYPE_3__ ngx_http_cleanup_t ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_3__*) ;
 void* ngx_palloc (int ,size_t) ;

ngx_http_cleanup_t *
ngx_http_cleanup_add(ngx_http_request_t *r, size_t size)
{
    ngx_http_cleanup_t *cln;

    r = r->main;

    cln = ngx_palloc(r->pool, sizeof(ngx_http_cleanup_t));
    if (cln == ((void*)0)) {
        return ((void*)0);
    }

    if (size) {
        cln->data = ngx_palloc(r->pool, size);
        if (cln->data == ((void*)0)) {
            return ((void*)0);
        }

    } else {
        cln->data = ((void*)0);
    }

    cln->handler = ((void*)0);
    cln->next = r->cleanup;

    r->cleanup = cln;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http cleanup add: %p", cln);

    return cln;
}
