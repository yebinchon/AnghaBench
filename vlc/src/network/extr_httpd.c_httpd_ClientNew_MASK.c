#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tls_t ;
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_5__ {int /*<<< orphan*/ * url; int /*<<< orphan*/ * sock; } ;
typedef  TYPE_1__ httpd_client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static httpd_client_t *FUNC2(vlc_tls_t *sock, vlc_tick_t now)
{
    httpd_client_t *cl = FUNC1(sizeof(httpd_client_t));

    if (!cl) return NULL;

    cl->sock    = sock;
    cl->url     = NULL;

    FUNC0(cl, now);
    return cl;
}