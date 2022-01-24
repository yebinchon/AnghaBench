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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  MSGTYPE_PONG ; 
 int /*<<< orphan*/  REDISMODULE_NODE_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int) ; 

void FUNC3(RedisModuleCtx *ctx, const char *sender_id, uint8_t type, const unsigned char *payload, uint32_t len) {
    FUNC1(ctx,"notice","PING (type %d) RECEIVED from %.*s: '%.*s'",
        type,REDISMODULE_NODE_ID_LEN,sender_id,(int)len, payload);
    FUNC2(ctx,NULL,MSGTYPE_PONG,(unsigned char*)"Ohi!",4);
    FUNC0(ctx, "INCR", "c", "pings_received");
}