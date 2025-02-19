
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_uint_t ;
struct TYPE_9__ {char* data; int len; } ;
struct TYPE_12__ {TYPE_1__ value; } ;
typedef TYPE_4__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {int msie; int msie6; int opera; int gecko; int chrome; int safari; int konqueror; TYPE_4__* user_agent; } ;
struct TYPE_13__ {TYPE_3__ headers_in; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_14__ {TYPE_2__* ssl; } ;
struct TYPE_10__ {int no_send_shutdown; } ;


 int NGX_OK ;
 TYPE_8__* c ;
 char* ngx_strstrn (char*,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_process_user_agent(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    u_char *user_agent, *msie;

    if (r->headers_in.user_agent) {
        return NGX_OK;
    }

    r->headers_in.user_agent = h;



    user_agent = h->value.data;

    msie = ngx_strstrn(user_agent, "MSIE ", 5 - 1);

    if (msie && msie + 7 < user_agent + h->value.len) {

        r->headers_in.msie = 1;

        if (msie[6] == '.') {

            switch (msie[5]) {
            case '4':
            case '5':
                r->headers_in.msie6 = 1;
                break;
            case '6':
                if (ngx_strstrn(msie + 8, "SV1", 3 - 1) == ((void*)0)) {
                    r->headers_in.msie6 = 1;
                }
                break;
            }
        }







    }

    if (ngx_strstrn(user_agent, "Opera", 5 - 1)) {
        r->headers_in.opera = 1;
        r->headers_in.msie = 0;
        r->headers_in.msie6 = 0;
    }

    if (!r->headers_in.msie && !r->headers_in.opera) {

        if (ngx_strstrn(user_agent, "Gecko/", 6 - 1)) {
            r->headers_in.gecko = 1;

        } else if (ngx_strstrn(user_agent, "Chrome/", 7 - 1)) {
            r->headers_in.chrome = 1;

        } else if (ngx_strstrn(user_agent, "Safari/", 7 - 1)
                   && ngx_strstrn(user_agent, "Mac OS X", 8 - 1))
        {
            r->headers_in.safari = 1;

        } else if (ngx_strstrn(user_agent, "Konqueror", 9 - 1)) {
            r->headers_in.konqueror = 1;
        }
    }

    return NGX_OK;
}
