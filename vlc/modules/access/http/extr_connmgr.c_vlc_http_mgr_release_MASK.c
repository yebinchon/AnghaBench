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
struct vlc_http_mgr {struct vlc_http_conn* conn; } ;
struct vlc_http_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_http_conn*) ; 

__attribute__((used)) static void FUNC2(struct vlc_http_mgr *mgr,
                                 struct vlc_http_conn *conn)
{
    FUNC0(mgr->conn == conn);
    mgr->conn = NULL;

    FUNC1(conn);
}