#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int errno ; 

__attribute__((used)) static void FUNC2(int err, int fd, const Unit *u) {
        FUNC0(err < 0);

        if (err == -ETIMEDOUT)
                FUNC1(fd, "Confirmation question timed out for %s, assuming positive response.\n", u->id);
        else {
                errno = -err;
                FUNC1(fd, "Couldn't ask confirmation for %s: %m, assuming positive response.\n", u->id);
        }
}