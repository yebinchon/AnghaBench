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
 int AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 char const* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int WRITE_STRING_FILE_DISABLE_BUFFER ; 
 int WRITE_STRING_FILE_VERIFY_ON_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*,char*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC5 (char const*,char const*,int) ; 

int FUNC6(int af, const char *ifname, const char *property, const char *value) {
        const char *p;

        FUNC1(FUNC0(af, AF_INET, AF_INET6));
        FUNC1(property);
        FUNC1(value);

        p = FUNC4("/proc/sys/net/ipv", af == AF_INET ? "4" : "6",
                     ifname ? "/conf/" : "", FUNC3(ifname),
                     property[0] == '/' ? "" : "/", property);

        FUNC2("Setting '%s' to '%s'", p, value);

        return FUNC5(p, value, WRITE_STRING_FILE_VERIFY_ON_FAILURE | WRITE_STRING_FILE_DISABLE_BUFFER);
}