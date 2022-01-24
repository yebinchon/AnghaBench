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
struct vlc_http_stream {int dummy; } ;
struct vlc_h1_conn {int active; scalar_t__ released; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_h1_conn*) ; 
 struct vlc_h1_conn* FUNC2 (struct vlc_http_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_h1_conn*) ; 

__attribute__((used)) static void FUNC4(struct vlc_http_stream *stream, bool abort)
{
    struct vlc_h1_conn *conn = FUNC2(stream);

    FUNC0(conn->active);

    if (abort)
        FUNC3(conn);

    conn->active = false;

    if (conn->released)
        FUNC1(conn);
}