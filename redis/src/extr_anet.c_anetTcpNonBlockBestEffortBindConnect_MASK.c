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
 int ANET_CONNECT_BE_BINDING ; 
 int ANET_CONNECT_NONBLOCK ; 
 int FUNC0 (char*,char const*,int,char const*,int) ; 

int FUNC1(char *err, const char *addr, int port,
                                         const char *source_addr)
{
    return FUNC0(err,addr,port,source_addr,
            ANET_CONNECT_NONBLOCK|ANET_CONNECT_BE_BINDING);
}