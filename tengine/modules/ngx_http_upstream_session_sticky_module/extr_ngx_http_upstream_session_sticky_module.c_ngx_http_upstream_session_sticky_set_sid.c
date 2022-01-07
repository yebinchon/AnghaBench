
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_md5_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int len; int * data; } ;
struct TYPE_9__ {TYPE_2__ sid; TYPE_1__* name; } ;
typedef TYPE_3__ ngx_http_ss_server_t ;
struct TYPE_10__ {int pool; } ;
typedef TYPE_4__ ngx_conf_t ;
struct TYPE_7__ {int len; int data; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_hex_dump (int *,int *,int) ;
 int ngx_md5_final (int *,int *) ;
 int ngx_md5_init (int *) ;
 int ngx_md5_update (int *,int ,int ) ;
 int * ngx_pnalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_session_sticky_set_sid(ngx_conf_t *cf,
    ngx_http_ss_server_t *s)
{
    u_char buf[16];
    ngx_md5_t md5;

    s->sid.len = 32;
    s->sid.data = ngx_pnalloc(cf->pool, 32);
    if (s->sid.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_md5_init(&md5);
    ngx_md5_update(&md5, s->name->data, s->name->len);
    ngx_md5_final(buf, &md5);

    ngx_hex_dump(s->sid.data, buf, 16);

    return NGX_OK;
}
