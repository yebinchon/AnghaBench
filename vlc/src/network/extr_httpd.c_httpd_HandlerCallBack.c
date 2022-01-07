
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {size_t i_body; int * p_body; int i_type; int psz_url; int * psz_args; scalar_t__ i_status; int i_proto; } ;
typedef TYPE_1__ httpd_message_t ;
struct TYPE_7__ {int p_sys; int (* pf_fill ) (int ,TYPE_2__*,int ,int *,int ,int *,size_t,char*,int *,int **,size_t*) ;} ;
typedef TYPE_2__ httpd_handler_t ;
typedef int httpd_client_t ;
typedef int httpd_callback_sys_t ;


 int HTTPD_MSG_ANSWER ;
 int HTTPD_MSG_HEAD ;
 int HTTPD_PROTO_NONE ;
 int NI_MAXNUMERICHOST ;
 int VLC_SUCCESS ;
 int free (int *) ;
 int httpd_ClientIP (int *,char*,int *) ;
 char* httpd_ReasonFromCode (int) ;
 int memcpy (char*,char*,int) ;
 int sprintf (char*,char*,int,char const*) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtol (char*,char**,int ) ;
 int stub1 (int ,TYPE_2__*,int ,int *,int ,int *,size_t,char*,int *,int **,size_t*) ;
 scalar_t__ xmalloc (int) ;
 int * xrealloc (int *,size_t) ;

__attribute__((used)) static int
httpd_HandlerCallBack(httpd_callback_sys_t *p_sys, httpd_client_t *cl,
                       httpd_message_t *answer, const httpd_message_t *query)
{
    httpd_handler_t *handler = (httpd_handler_t*)p_sys;
    char psz_remote_addr[NI_MAXNUMERICHOST];

    if (!answer || !query)
        return VLC_SUCCESS;

    answer->i_proto = HTTPD_PROTO_NONE;
    answer->i_type = HTTPD_MSG_ANSWER;


    answer->i_status = 0;

    if (!httpd_ClientIP(cl, psz_remote_addr, ((void*)0)))
        *psz_remote_addr = '\0';

    uint8_t *psz_args = query->psz_args;
    handler->pf_fill(handler->p_sys, handler, query->psz_url, psz_args,
                      query->i_type, query->p_body, query->i_body,
                      psz_remote_addr, ((void*)0),
                      &answer->p_body, &answer->i_body);

    if (query->i_type == HTTPD_MSG_HEAD) {
        char *p = (char *)answer->p_body;


        while ((p = strchr(p, '\r')))
            if (p[1] == '\n' && p[2] == '\r' && p[3] == '\n')
                break;

        if (p) {
            p[4] = '\0';
            answer->i_body = strlen((char*)answer->p_body) + 1;
            answer->p_body = xrealloc(answer->p_body, answer->i_body);
        }
    }

    if (strncmp((char *)answer->p_body, "HTTP/1.", 7)) {
        int i_status, i_headers;
        char *psz_headers, *psz_new;
        const char *psz_status;

        if (!strncmp((char *)answer->p_body, "Status: ", 8)) {

            i_status = strtol((char *)&answer->p_body[8], &psz_headers, 0);
            if (*psz_headers == '\r' || *psz_headers == '\n') psz_headers++;
            if (*psz_headers == '\n') psz_headers++;
            i_headers = answer->i_body - (psz_headers - (char *)answer->p_body);
        } else {
            i_status = 200;
            psz_headers = (char *)answer->p_body;
            i_headers = answer->i_body;
        }

        psz_status = httpd_ReasonFromCode(i_status);
        answer->i_body = sizeof("HTTP/1.0 xxx \r\n")
                        + strlen(psz_status) + i_headers - 1;
        psz_new = (char *)xmalloc(answer->i_body + 1);
        sprintf(psz_new, "HTTP/1.0 %03d %s\r\n", i_status, psz_status);
        memcpy(&psz_new[strlen(psz_new)], psz_headers, i_headers);
        free(answer->p_body);
        answer->p_body = (uint8_t *)psz_new;
    }

    return VLC_SUCCESS;
}
