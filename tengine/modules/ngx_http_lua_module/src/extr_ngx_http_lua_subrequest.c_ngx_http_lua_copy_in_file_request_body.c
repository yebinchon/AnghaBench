
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int fd; } ;
struct TYPE_11__ {TYPE_2__ file; struct TYPE_11__* temp_file; int clean; int persistent; } ;
typedef TYPE_3__ ngx_temp_file_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {TYPE_3__* request_body; int pool; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
typedef TYPE_3__ ngx_http_request_body_t ;
struct TYPE_9__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int dd (char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memcpy (TYPE_3__*,TYPE_3__*,int) ;
 void* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_copy_in_file_request_body(ngx_http_request_t *r)
{
    ngx_temp_file_t *tf;

    ngx_http_request_body_t *body;

    tf = r->request_body->temp_file;

    if (!tf->persistent || !tf->clean) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "the request body was not read by ngx_lua");

        return NGX_ERROR;
    }

    body = ngx_palloc(r->pool, sizeof(ngx_http_request_body_t));
    if (body == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(body, r->request_body, sizeof(ngx_http_request_body_t));

    body->temp_file = ngx_palloc(r->pool, sizeof(ngx_temp_file_t));
    if (body->temp_file == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(body->temp_file, tf, sizeof(ngx_temp_file_t));
    dd("file fd: %d", body->temp_file->file.fd);

    r->request_body = body;

    return NGX_OK;
}
