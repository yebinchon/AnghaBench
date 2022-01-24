#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  peerid ;
struct TYPE_4__ {char* peerid; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 int NET_PEER_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 char* FUNC1 (char*) ; 

char *FUNC2(client *c) {
    char peerid[NET_PEER_ID_LEN];

    if (c->peerid == NULL) {
        FUNC0(c,peerid,sizeof(peerid));
        c->peerid = FUNC1(peerid);
    }
    return c->peerid;
}