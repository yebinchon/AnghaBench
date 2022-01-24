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

/* Variables and functions */
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int /*<<< orphan*/  IPPROTO_UDPLITE ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *s) {
        int r;

        r = FUNC1(s);
        if (r < 0)
                return r;
        if (!FUNC0(r, IPPROTO_UDPLITE, IPPROTO_SCTP))
                return -EPROTONOSUPPORT;

        return r;
}