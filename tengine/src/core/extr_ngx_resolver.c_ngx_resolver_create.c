
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_23__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_30__ {int * data; scalar_t__ len; } ;
struct TYPE_29__ {int default_port; int naddrs; TYPE_6__* resolver; TYPE_1__* addrs; int server; int socklen; int sockaddr; TYPE_5__ url; int err; } ;
typedef TYPE_4__ ngx_url_t ;
typedef size_t ngx_uint_t ;
typedef TYPE_5__ ngx_str_t ;
struct TYPE_26__ {scalar_t__ nelts; } ;
struct TYPE_31__ {int ipv6; int ident; int resend_timeout; int tcp_timeout; int expire; scalar_t__ valid; TYPE_23__ connections; int log_level; int * log; TYPE_2__* event; int addr6_expire_queue; int addr6_resend_queue; int addr6_sentinel; int addr6_rbtree; int addr_expire_queue; int srv_expire_queue; int name_expire_queue; int addr_resend_queue; int srv_resend_queue; int name_resend_queue; int addr_sentinel; int addr_rbtree; int srv_sentinel; int srv_rbtree; int name_sentinel; int name_rbtree; } ;
typedef TYPE_6__ ngx_resolver_t ;
typedef TYPE_4__ ngx_resolver_connection_t ;
struct TYPE_32__ {TYPE_6__* data; int handler; } ;
typedef TYPE_8__ ngx_pool_cleanup_t ;
typedef int ngx_event_t ;
struct TYPE_33__ {int pool; TYPE_3__* cycle; } ;
typedef TYPE_9__ ngx_conf_t ;
struct TYPE_28__ {int new_log; } ;
struct TYPE_27__ {int cancelable; int * log; TYPE_6__* data; int handler; } ;
struct TYPE_25__ {int name; int socklen; int sockaddr; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int NGX_RESOLVER_FILE ;
 scalar_t__ ngx_array_init (TYPE_23__*,int ,size_t,int) ;
 TYPE_4__* ngx_array_push_n (TYPE_23__*,int) ;
 int ngx_conf_log_error (int ,TYPE_9__*,int ,char*,...) ;
 int ngx_memzero (TYPE_4__*,int) ;
 scalar_t__ ngx_parse_time (TYPE_5__*,int) ;
 scalar_t__ ngx_parse_url (int ,TYPE_4__*) ;
 void* ngx_pcalloc (int ,int) ;
 TYPE_8__* ngx_pool_cleanup_add (int ,int ) ;
 int ngx_queue_init (int *) ;
 int ngx_rbtree_init (int *,int *,int ) ;
 int ngx_rbtree_insert_value ;
 int ngx_resolver_cleanup ;
 int ngx_resolver_rbtree_insert_addr6_value ;
 int ngx_resolver_rbtree_insert_value ;
 scalar_t__ ngx_resolver_read_resolv_file (TYPE_9__*,TYPE_5__*,TYPE_5__**,size_t*) ;
 int ngx_resolver_resend_handler ;
 scalar_t__ ngx_strcmp (int *,char*) ;
 TYPE_5__ ngx_string (int ) ;
 scalar_t__ ngx_strncmp (int *,char*,int) ;

ngx_resolver_t *
ngx_resolver_create(ngx_conf_t *cf, ngx_str_t *names, ngx_uint_t n)
{
    ngx_str_t s;
    ngx_url_t u;
    ngx_uint_t i, j;
    ngx_resolver_t *r;
    ngx_pool_cleanup_t *cln;
    ngx_resolver_connection_t *rec;




    r = ngx_pcalloc(cf->pool, sizeof(ngx_resolver_t));
    if (r == ((void*)0)) {
        return ((void*)0);
    }

    r->event = ngx_pcalloc(cf->pool, sizeof(ngx_event_t));
    if (r->event == ((void*)0)) {
        return ((void*)0);
    }

    cln = ngx_pool_cleanup_add(cf->pool, 0);
    if (cln == ((void*)0)) {
        return ((void*)0);
    }

    cln->handler = ngx_resolver_cleanup;
    cln->data = r;

    ngx_rbtree_init(&r->name_rbtree, &r->name_sentinel,
                    ngx_resolver_rbtree_insert_value);

    ngx_rbtree_init(&r->srv_rbtree, &r->srv_sentinel,
                    ngx_resolver_rbtree_insert_value);

    ngx_rbtree_init(&r->addr_rbtree, &r->addr_sentinel,
                    ngx_rbtree_insert_value);

    ngx_queue_init(&r->name_resend_queue);
    ngx_queue_init(&r->srv_resend_queue);
    ngx_queue_init(&r->addr_resend_queue);

    ngx_queue_init(&r->name_expire_queue);
    ngx_queue_init(&r->srv_expire_queue);
    ngx_queue_init(&r->addr_expire_queue);
    r->event->handler = ngx_resolver_resend_handler;
    r->event->data = r;
    r->event->log = &cf->cycle->new_log;
    r->event->cancelable = 1;
    r->ident = -1;

    r->resend_timeout = 5;
    r->tcp_timeout = 5;
    r->expire = 30;
    r->valid = 0;

    r->log = &cf->cycle->new_log;
    r->log_level = NGX_LOG_ERR;
    if (n) {
        if (ngx_array_init(&r->connections, cf->pool, n,
                           sizeof(ngx_resolver_connection_t))
            != NGX_OK)
        {
            return ((void*)0);
        }
    }

    for (i = 0; i < n; i++) {
        if (ngx_strncmp(names[i].data, "valid=", 6) == 0) {
            s.len = names[i].len - 6;
            s.data = names[i].data + 6;

            r->valid = ngx_parse_time(&s, 1);

            if (r->valid == (time_t) NGX_ERROR) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "invalid parameter: %V", &names[i]);
                return ((void*)0);
            }

            continue;
        }
        ngx_memzero(&u, sizeof(ngx_url_t));

        u.url = names[i];
        u.default_port = 53;

        if (ngx_parse_url(cf->pool, &u) != NGX_OK) {
            if (u.err) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "%s in resolver \"%V\"",
                                   u.err, &u.url);
            }

            return ((void*)0);
        }

        rec = ngx_array_push_n(&r->connections, u.naddrs);
        if (rec == ((void*)0)) {
            return ((void*)0);
        }

        ngx_memzero(rec, u.naddrs * sizeof(ngx_resolver_connection_t));

        for (j = 0; j < u.naddrs; j++) {
            rec[j].sockaddr = u.addrs[j].sockaddr;
            rec[j].socklen = u.addrs[j].socklen;
            rec[j].server = u.addrs[j].name;
            rec[j].resolver = r;
        }
    }

    if (n && r->connections.nelts == 0) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0, "no name servers defined");
        return ((void*)0);
    }

    return r;
}
