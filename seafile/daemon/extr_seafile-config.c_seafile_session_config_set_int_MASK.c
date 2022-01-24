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
typedef  int /*<<< orphan*/  sql ;
struct TYPE_3__ {int http_proxy_port; int /*<<< orphan*/  config_db; } ;
typedef  TYPE_1__ SeafileSession ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_PROXY_PORT ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

int
FUNC3 (SeafileSession *session,
                                const char *key,
                                int value)
{
    char sql[256];

    FUNC1 (sizeof(sql), sql,
                      "REPLACE INTO Config VALUES ('%q', %d);",
                      key, value);
    if (FUNC2 (session->config_db, sql) < 0)
        return -1;

    if (FUNC0(key, KEY_PROXY_PORT) == 0) {
        session->http_proxy_port = value;
    }

    return 0;
}