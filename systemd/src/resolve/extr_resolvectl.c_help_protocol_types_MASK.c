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
 scalar_t__ arg_legend ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void) {
        if (arg_legend)
                FUNC0("Known protocol types:");
        FUNC0("dns\nllmnr\nllmnr-ipv4\nllmnr-ipv6\nmdns\nmdns-ipv4\nmdns-ipv6");
}