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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC0(FUNC1("foobar", false));
        FUNC0(FUNC1("foobar.com", false));
        FUNC0(!FUNC1("foobar.com.", false));
        FUNC0(FUNC1("fooBAR", false));
        FUNC0(FUNC1("fooBAR.com", false));
        FUNC0(!FUNC1("fooBAR.", false));
        FUNC0(!FUNC1("fooBAR.com.", false));
        FUNC0(!FUNC1("fööbar", false));
        FUNC0(!FUNC1("", false));
        FUNC0(!FUNC1(".", false));
        FUNC0(!FUNC1("..", false));
        FUNC0(!FUNC1("foobar.", false));
        FUNC0(!FUNC1(".foobar", false));
        FUNC0(!FUNC1("foo..bar", false));
        FUNC0(!FUNC1("foo.bar..", false));
        FUNC0(!FUNC1("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", false));
        FUNC0(!FUNC1("au-xph5-rvgrdsb5hcxc-47et3a5vvkrc-server-wyoz4elpdpe3.openstack.local", false));

        FUNC0(FUNC1("foobar", true));
        FUNC0(FUNC1("foobar.com", true));
        FUNC0(FUNC1("foobar.com.", true));
        FUNC0(FUNC1("fooBAR", true));
        FUNC0(FUNC1("fooBAR.com", true));
        FUNC0(!FUNC1("fooBAR.", true));
        FUNC0(FUNC1("fooBAR.com.", true));
        FUNC0(!FUNC1("fööbar", true));
        FUNC0(!FUNC1("", true));
        FUNC0(!FUNC1(".", true));
        FUNC0(!FUNC1("..", true));
        FUNC0(!FUNC1("foobar.", true));
        FUNC0(!FUNC1(".foobar", true));
        FUNC0(!FUNC1("foo..bar", true));
        FUNC0(!FUNC1("foo.bar..", true));
        FUNC0(!FUNC1("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", true));
}