#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {size_t i_body; int /*<<< orphan*/ * p_body; int /*<<< orphan*/  i_type; int /*<<< orphan*/  psz_url; int /*<<< orphan*/ * psz_args; scalar_t__ i_status; int /*<<< orphan*/  i_proto; } ;
typedef  TYPE_1__ httpd_message_t ;
struct TYPE_7__ {int /*<<< orphan*/  p_sys; int /*<<< orphan*/  (* pf_fill ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ;} ;
typedef  TYPE_2__ httpd_handler_t ;
typedef  int /*<<< orphan*/  httpd_client_t ;
typedef  int /*<<< orphan*/  httpd_callback_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  HTTPD_MSG_ANSWER ; 
 int /*<<< orphan*/  HTTPD_MSG_HEAD ; 
 int /*<<< orphan*/  HTTPD_PROTO_NONE ; 
 int NI_MAXNUMERICHOST ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,char const*) ; 
 char* FUNC5 (char*,char) ; 
 size_t FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC12(httpd_callback_sys_t *p_sys, httpd_client_t *cl,
                       httpd_message_t *answer, const httpd_message_t *query)
{
    httpd_handler_t *handler = (httpd_handler_t*)p_sys;
    char psz_remote_addr[NI_MAXNUMERICHOST];

    if (!answer || !query)
        return VLC_SUCCESS;

    answer->i_proto  = HTTPD_PROTO_NONE;
    answer->i_type   = HTTPD_MSG_ANSWER;

    /* We do it ourselves, thanks */
    answer->i_status = 0;

    if (!FUNC1(cl, psz_remote_addr, NULL))
        *psz_remote_addr = '\0';

    uint8_t *psz_args = query->psz_args;
    handler->pf_fill(handler->p_sys, handler, query->psz_url, psz_args,
                      query->i_type, query->p_body, query->i_body,
                      psz_remote_addr, NULL,
                      &answer->p_body, &answer->i_body);

    if (query->i_type == HTTPD_MSG_HEAD) {
        char *p = (char *)answer->p_body;

        /* Looks for end of header (i.e. one empty line) */
        while ((p = FUNC5(p, '\r')))
            if (p[1] == '\n' && p[2] == '\r' && p[3] == '\n')
                break;

        if (p) {
            p[4] = '\0';
            answer->i_body = FUNC6((char*)answer->p_body) + 1;
            answer->p_body = FUNC11(answer->p_body, answer->i_body);
        }
    }

    if (FUNC7((char *)answer->p_body, "HTTP/1.", 7)) {
        int i_status, i_headers;
        char *psz_headers, *psz_new;
        const char *psz_status;

        if (!FUNC7((char *)answer->p_body, "Status: ", 8)) {
            /* Apache-style */
            i_status = FUNC8((char *)&answer->p_body[8], &psz_headers, 0);
            if (*psz_headers == '\r' || *psz_headers == '\n') psz_headers++;
            if (*psz_headers == '\n') psz_headers++;
            i_headers = answer->i_body - (psz_headers - (char *)answer->p_body);
        } else {
            i_status = 200;
            psz_headers = (char *)answer->p_body;
            i_headers = answer->i_body;
        }

        psz_status = FUNC2(i_status);
        answer->i_body = sizeof("HTTP/1.0 xxx \r\n")
                        + FUNC6(psz_status) + i_headers - 1;
        psz_new = (char *)FUNC10(answer->i_body + 1);
        FUNC4(psz_new, "HTTP/1.0 %03d %s\r\n", i_status, psz_status);
        FUNC3(&psz_new[FUNC6(psz_new)], psz_headers, i_headers);
        FUNC0(answer->p_body);
        answer->p_body = (uint8_t *)psz_new;
    }

    return VLC_SUCCESS;
}