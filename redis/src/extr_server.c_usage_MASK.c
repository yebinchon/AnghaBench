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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2(void) {
    FUNC1(stderr,"Usage: ./redis-server [/path/to/redis.conf] [options]\n");
    FUNC1(stderr,"       ./redis-server - (read config from stdin)\n");
    FUNC1(stderr,"       ./redis-server -v or --version\n");
    FUNC1(stderr,"       ./redis-server -h or --help\n");
    FUNC1(stderr,"       ./redis-server --test-memory <megabytes>\n\n");
    FUNC1(stderr,"Examples:\n");
    FUNC1(stderr,"       ./redis-server (run the server with default conf)\n");
    FUNC1(stderr,"       ./redis-server /etc/redis/6379.conf\n");
    FUNC1(stderr,"       ./redis-server --port 7777\n");
    FUNC1(stderr,"       ./redis-server --port 7777 --replicaof 127.0.0.1 8888\n");
    FUNC1(stderr,"       ./redis-server /etc/myredis.conf --loglevel verbose\n\n");
    FUNC1(stderr,"Sentinel mode:\n");
    FUNC1(stderr,"       ./redis-server /etc/sentinel.conf --sentinel\n");
    FUNC0(1);
}