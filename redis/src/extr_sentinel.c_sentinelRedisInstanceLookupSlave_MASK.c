#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/  slaves; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int NET_PEER_ID_LEN ; 
 int SRI_MASTER ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

sentinelRedisInstance *FUNC5(
                sentinelRedisInstance *ri, char *ip, int port)
{
    sds key;
    sentinelRedisInstance *slave;
    char buf[NET_PEER_ID_LEN];

    FUNC4(ri->flags & SRI_MASTER);
    FUNC0(buf,sizeof(buf),ip,port);
    key = FUNC3(buf);
    slave = FUNC1(ri->slaves,key);
    FUNC2(key);
    return slave;
}