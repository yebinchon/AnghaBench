
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t size; } ;
struct TYPE_7__ {TYPE_1__ u; int value; scalar_t__ lengths; } ;
typedef TYPE_2__ ngx_stream_complex_value_t ;
typedef int ngx_conf_t ;
struct TYPE_8__ {int offset; } ;
typedef TYPE_3__ ngx_command_t ;


 char* NGX_CONF_OK ;
 scalar_t__ NGX_ERROR ;
 size_t ngx_parse_size (int *) ;
 char* ngx_stream_set_complex_value_slot (int *,TYPE_3__*,void*) ;

char *
ngx_stream_set_complex_value_size_slot(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    char *p = conf;

    char *rv;
    ngx_stream_complex_value_t *cv;

    rv = ngx_stream_set_complex_value_slot(cf, cmd, conf);

    if (rv != NGX_CONF_OK) {
        return rv;
    }

    cv = *(ngx_stream_complex_value_t **) (p + cmd->offset);

    if (cv->lengths) {
        return NGX_CONF_OK;
    }

    cv->u.size = ngx_parse_size(&cv->value);
    if (cv->u.size == (size_t) NGX_ERROR) {
        return "invalid value";
    }

    return NGX_CONF_OK;
}
