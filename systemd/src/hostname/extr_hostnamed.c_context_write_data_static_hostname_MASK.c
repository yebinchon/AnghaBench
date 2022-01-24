#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int ENOENT ; 
 size_t PROP_STATIC_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(Context *c) {

        FUNC0(c);

        if (FUNC1(c->data[PROP_STATIC_HOSTNAME])) {

                if (FUNC2("/etc/hostname") < 0)
                        return errno == ENOENT ? 0 : -errno;

                return 0;
        }
        return FUNC3("/etc/hostname", c->data[PROP_STATIC_HOSTNAME]);
}