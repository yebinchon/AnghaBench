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
struct in_addr {int dummy; } ;
struct hostent {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,struct in_addr*) ; 
 int FUNC1 (char*,int,struct hostent**) ; 
 int FUNC2 (char const*,struct hostent**) ; 

__attribute__((used)) static int FUNC3(const char *address, struct hostent **hp) {
    struct in_addr addr;
    if (FUNC0(address, &addr))
        return FUNC1((char *) &addr, sizeof(addr), hp);
    else
        return FUNC2(address, hp);
}