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
typedef  int /*<<< orphan*/  sd_resolve_query ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(sd_resolve_query *q, int ret, const char *host, const char *serv, void *userdata) {
        FUNC0(q);

        if (ret != 0) {
                FUNC2("getnameinfo error: %s %i", FUNC1(ret), ret);
                return 0;
        }

        FUNC3("Host: %s — Serv: %s\n", FUNC4(host), FUNC4(serv));
        return 0;
}