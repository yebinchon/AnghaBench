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
struct hostent {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int IO_DONE ; 
 int FUNC0 () ; 
 struct hostent* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const char *addr, socklen_t len, struct hostent **hp) {
    *hp = FUNC1(addr, len, AF_INET);
    if (*hp) return IO_DONE;
    else return FUNC0();
}