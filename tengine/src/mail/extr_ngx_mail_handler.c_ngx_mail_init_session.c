
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * ctx; int protocol; } ;
typedef TYPE_3__ ngx_mail_session_t ;
struct TYPE_15__ {TYPE_2__* protocol; } ;
typedef TYPE_4__ ngx_mail_core_srv_conf_t ;
struct TYPE_16__ {TYPE_1__* write; int pool; TYPE_3__* data; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_13__ {int (* init_session ) (TYPE_3__*,TYPE_5__*) ;int type; } ;
struct TYPE_12__ {int handler; } ;


 int ngx_mail_core_module ;
 TYPE_4__* ngx_mail_get_module_srv_conf (TYPE_3__*,int ) ;
 int ngx_mail_max_module ;
 int ngx_mail_send ;
 int ngx_mail_session_internal_server_error (TYPE_3__*) ;
 int * ngx_pcalloc (int ,int) ;
 int stub1 (TYPE_3__*,TYPE_5__*) ;

__attribute__((used)) static void
ngx_mail_init_session(ngx_connection_t *c)
{
    ngx_mail_session_t *s;
    ngx_mail_core_srv_conf_t *cscf;

    s = c->data;

    cscf = ngx_mail_get_module_srv_conf(s, ngx_mail_core_module);

    s->protocol = cscf->protocol->type;

    s->ctx = ngx_pcalloc(c->pool, sizeof(void *) * ngx_mail_max_module);
    if (s->ctx == ((void*)0)) {
        ngx_mail_session_internal_server_error(s);
        return;
    }

    c->write->handler = ngx_mail_send;

    cscf->protocol->init_session(s, c);
}
