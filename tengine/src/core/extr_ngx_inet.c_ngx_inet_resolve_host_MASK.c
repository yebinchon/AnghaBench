#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_19__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/ ** h_addr_list; } ;
struct TYPE_17__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_20__ {char* err; TYPE_11__ host; } ;
typedef  TYPE_2__ ngx_url_t ;
typedef  size_t ngx_uint_t ;
struct TYPE_21__ {void* len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_22__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_4__ ngx_pool_t ;
typedef  scalar_t__ ngx_int_t ;
typedef  scalar_t__ in_addr_t ;
struct TYPE_18__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  NGX_DNS_RESOLVE_BACKUP_PATH ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct hostent* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_16__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_2__*,struct sockaddr*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int) ; 
 scalar_t__ FUNC9 (TYPE_4__*,TYPE_2__**,TYPE_3__) ; 
 scalar_t__ FUNC10 (TYPE_4__*,TYPE_2__**,TYPE_3__) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC12(ngx_pool_t *pool, ngx_url_t *u)
{
    u_char              *host;
    ngx_uint_t           i, n;
    struct hostent      *h;
    struct sockaddr_in   sin;
#if (T_NGX_DNS_RESOLVE_BACKUP)
    u_char              *ph;
    ngx_str_t            path;
#endif

    /* AF_INET only */

    FUNC8(&sin, sizeof(struct sockaddr_in));

    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = FUNC6(u->host.data, u->host.len);

    if (sin.sin_addr.s_addr == INADDR_NONE) {
        host = FUNC2(u->host.len + 1, pool->log);
        if (host == NULL) {
            return NGX_ERROR;
        }

        (void) FUNC3(host, u->host.data, u->host.len + 1);

        h = FUNC1((char *) host);

#if (T_NGX_DNS_RESOLVE_BACKUP)
        ph = (u_char *) getenv(NGX_DNS_RESOLVE_BACKUP_PATH);
        if (h == NULL && ph != NULL) {
            path.data = ph;
            path.len = ngx_strlen(ph);
            if (ngx_resolve_using_local(pool, &u, path) == NGX_OK) {
                ngx_log_error(NGX_LOG_WARN, ngx_cycle->log, 0,
                              "dom %V using local dns cache successed",
                              &u->host);
                ngx_free(host);
                return NGX_OK;
            }
        }
#endif

        FUNC4(host);

        if (h == NULL || h->h_addr_list[0] == NULL) {
            u->err = "host not found";
            return NGX_ERROR;
        }

        for (n = 0; h->h_addr_list[n] != NULL; n++) { /* void */ }

        /* MP: ngx_shared_palloc() */

        for (i = 0; i < n; i++) {
            sin.sin_addr.s_addr = *(in_addr_t *) (h->h_addr_list[i]);

            if (FUNC5(pool, u, (struct sockaddr *) &sin,
                                  sizeof(struct sockaddr_in), n)
                != NGX_OK)
            {
                return NGX_ERROR;
            }
        }

#if (T_NGX_DNS_RESOLVE_BACKUP)
        ph = (u_char *) getenv(NGX_DNS_RESOLVE_BACKUP_PATH);
        if (ph != NULL) {
            path.data = ph;
            path.len = ngx_strlen(ph);
            if (ngx_resolve_backup(pool, &u, path) != NGX_OK) {
                ngx_log_error(NGX_LOG_WARN, ngx_cycle->log, 0,
                              "dom %V backup local dns cache failed",
                              &u->host);
            }
        }
#endif

    } else {

        /* MP: ngx_shared_palloc() */

        if (FUNC5(pool, u, (struct sockaddr *) &sin,
                              sizeof(struct sockaddr_in), 1)
            != NGX_OK)
        {
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}