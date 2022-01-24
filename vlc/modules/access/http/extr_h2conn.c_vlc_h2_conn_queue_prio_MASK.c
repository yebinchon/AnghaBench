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
struct vlc_h2_frame {int dummy; } ;
struct vlc_h2_conn {int /*<<< orphan*/  out; int /*<<< orphan*/  opaque; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct vlc_h2_frame*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct vlc_h2_frame*) ; 

__attribute__((used)) static int FUNC2(struct vlc_h2_conn *conn,
                                  struct vlc_h2_frame *f)
{
    FUNC0(conn->opaque, f, "out (priority)");
    return FUNC1(conn->out, f);
}