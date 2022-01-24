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
typedef  int /*<<< orphan*/  ip ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int FUNC0 (char*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int*) ; 

int FUNC2(int fd, char *buf, size_t buf_len) {
    char ip[INET6_ADDRSTRLEN];
    int port;

    FUNC1(fd,ip,sizeof(ip),&port);
    return FUNC0(buf, buf_len, ip, port);
}