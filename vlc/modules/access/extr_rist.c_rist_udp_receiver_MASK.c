#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ i_port; int /*<<< orphan*/  psz_host; } ;
typedef  TYPE_1__ vlc_url_t ;
struct rist_flow {int fd_in; int fd_rtcp_m; int fd_nack; struct rist_flow* buffer; int /*<<< orphan*/  cname; } ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_12__ {struct rist_flow* flow; } ;
typedef  TYPE_3__ stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (struct rist_flow*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct rist_flow* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static struct rist_flow *FUNC8(stream_t *p_access, vlc_url_t *parsed_url, bool b_ismulticast)
{
    stream_sys_t *p_sys = p_access->p_sys;
    FUNC2( p_access, "Opening Rist Flow Receiver at %s:%d and %s:%d",
             parsed_url->psz_host, parsed_url->i_port,
             parsed_url->psz_host, parsed_url->i_port+1);

    p_sys->flow = FUNC6();
    if (!p_sys->flow)
        return NULL;

    p_sys->flow->fd_in = FUNC4(p_access, parsed_url->psz_host, parsed_url->i_port, NULL,
                0, IPPROTO_UDP);
    if (p_sys->flow->fd_in < 0)
    {
        FUNC1( p_access, "cannot open input socket" );
        goto fail;
    }

    if (b_ismulticast)
    {
        p_sys->flow->fd_rtcp_m = FUNC4(p_access, parsed_url->psz_host, parsed_url->i_port + 1,
            NULL, 0, IPPROTO_UDP);
        if (p_sys->flow->fd_rtcp_m < 0)
        {
            FUNC1( p_access, "cannot open multicast nack socket" );
            goto fail;
        }
        p_sys->flow->fd_nack = FUNC3(p_access, parsed_url->psz_host,
            parsed_url->i_port + 1, -1, IPPROTO_UDP );
    }
    else
    {
        p_sys->flow->fd_nack = FUNC4(p_access, parsed_url->psz_host, parsed_url->i_port + 1,
            NULL, 0, IPPROTO_UDP);
    }
    if (p_sys->flow->fd_nack < 0)
    {
        FUNC1( p_access, "cannot open nack socket" );
        goto fail;
    }

    FUNC5(p_sys->flow->fd_nack, p_sys->flow->cname);
    FUNC2(p_access, "our cname is %s", p_sys->flow->cname);

    return  p_sys->flow;

fail:
    if (p_sys->flow->fd_in != -1)
        FUNC7(p_sys->flow->fd_in);
    if (p_sys->flow->fd_nack != -1)
        FUNC7(p_sys->flow->fd_nack);
    if (p_sys->flow->fd_rtcp_m != -1)
        FUNC7(p_sys->flow->fd_rtcp_m);
    FUNC0(p_sys->flow->buffer);
    FUNC0(p_sys->flow);
    return NULL;
}