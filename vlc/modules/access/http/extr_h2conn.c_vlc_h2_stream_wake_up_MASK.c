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
struct vlc_h2_stream {int interrupted; int /*<<< orphan*/  recv_wait; struct vlc_h2_conn* conn; } ;
struct vlc_h2_conn {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
    struct vlc_h2_stream *s = data;
    struct vlc_h2_conn *conn = s->conn;

    FUNC1(&conn->lock);
    s->interrupted = true;
    FUNC0(&s->recv_wait);
    FUNC2(&conn->lock);
}