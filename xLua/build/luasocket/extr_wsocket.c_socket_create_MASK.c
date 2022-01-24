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
typedef  scalar_t__* p_socket ;

/* Variables and functions */
 int IO_DONE ; 
 scalar_t__ SOCKET_INVALID ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int,int,int) ; 

int FUNC2(p_socket ps, int domain, int type, int protocol) {
    *ps = FUNC1(domain, type, protocol);
    if (*ps != SOCKET_INVALID) return IO_DONE;
    else return FUNC0();
}