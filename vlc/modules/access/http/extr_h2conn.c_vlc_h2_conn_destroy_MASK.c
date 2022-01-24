#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tls; } ;
struct vlc_h2_conn {TYPE_1__ conn; int /*<<< orphan*/  out; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; int /*<<< orphan*/ * streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_H2_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_h2_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_h2_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct vlc_h2_conn *conn)
{
    FUNC0(conn->streams == NULL);

    FUNC3(conn, VLC_H2_NO_ERROR);

    FUNC2(conn->thread);
    FUNC5(conn->thread, NULL);
    FUNC6(&conn->lock);

    FUNC4(conn->out);
    FUNC8(conn->conn.tls, true);

    FUNC7(conn->conn.tls);
    FUNC1(conn);
}