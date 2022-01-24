#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlc_h2_stream {size_t recv_cwnd; int /*<<< orphan*/  recv_wait; struct vlc_h2_frame** recv_tailp; int /*<<< orphan*/  id; int /*<<< orphan*/  conn; scalar_t__ recv_end; } ;
struct vlc_h2_frame {struct vlc_h2_frame* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_H2_FLOW_CONTROL_ERROR ; 
 int /*<<< orphan*/  VLC_H2_STREAM_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_frame*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_h2_frame*,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vlc_h2_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *ctx, struct vlc_h2_frame *f)
{
    struct vlc_h2_stream *s = ctx;
    size_t len;

    if (s->recv_end)
    {
        FUNC0(f);
        return FUNC3(s->conn, s->id, VLC_H2_STREAM_CLOSED);
    }

    /* Enforce the congestion window as required by the protocol spec */
    FUNC2(f, &len);
    if (len > s->recv_cwnd)
    {
        FUNC0(f);
        return FUNC4(s, VLC_H2_FLOW_CONTROL_ERROR);
    }
    s->recv_cwnd -= len;

    *(s->recv_tailp) = f;
    s->recv_tailp = &f->next;
    FUNC1(&s->recv_wait);
    return 0;
}