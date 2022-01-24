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
struct TYPE_3__ {int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ clusterLink ;

/* Variables and functions */
 int NET_IP_STR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

void FUNC2(char *buf, clusterLink *link, char *announced_ip) {
    if (announced_ip[0] != '\0') {
        FUNC1(buf,announced_ip,NET_IP_STR_LEN);
        buf[NET_IP_STR_LEN-1] = '\0'; /* We are not sure the input is sane. */
    } else {
        FUNC0(link->conn, buf, NET_IP_STR_LEN, NULL);
    }
}