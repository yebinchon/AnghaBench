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
typedef  int /*<<< orphan*/  sbuf ;
typedef  int /*<<< orphan*/  redisReader ;
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int /*<<< orphan*/  REDIS_ERR_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static void FUNC3(redisReader *r, char byte) {
    char cbuf[8], sbuf[128];

    FUNC1(cbuf,sizeof(cbuf),byte);
    FUNC2(sbuf,sizeof(sbuf),
        "Protocol error, got %s as reply type byte", cbuf);
    FUNC0(r,REDIS_ERR_PROTOCOL,sbuf);
}