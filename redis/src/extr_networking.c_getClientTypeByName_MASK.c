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
 int CLIENT_TYPE_MASTER ; 
 int CLIENT_TYPE_NORMAL ; 
 int CLIENT_TYPE_PUBSUB ; 
 int CLIENT_TYPE_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

int FUNC1(char *name) {
    if (!FUNC0(name,"normal")) return CLIENT_TYPE_NORMAL;
    else if (!FUNC0(name,"slave")) return CLIENT_TYPE_SLAVE;
    else if (!FUNC0(name,"replica")) return CLIENT_TYPE_SLAVE;
    else if (!FUNC0(name,"pubsub")) return CLIENT_TYPE_PUBSUB;
    else if (!FUNC0(name,"master")) return CLIENT_TYPE_MASTER;
    else return -1;
}