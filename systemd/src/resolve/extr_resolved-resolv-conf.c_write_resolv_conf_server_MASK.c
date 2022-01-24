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
typedef  unsigned int FILE ;
typedef  unsigned int DnsServer ;
typedef  int /*<<< orphan*/  DnsScope ;

/* Variables and functions */
 unsigned int MAXNS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int*) ; 
 char* FUNC3 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(DnsServer *s, FILE *f, unsigned *count) {
        DnsScope *scope;

        FUNC0(s);
        FUNC0(f);
        FUNC0(count);

        if (!FUNC3(s)) {
                FUNC7("Out of memory, or invalid DNS address. Ignoring server.");
                return;
        }

        /* Check if the scope this DNS server belongs to is suitable as 'default' route for lookups; resolv.conf does
         * not have a syntax to express that, so it must not appear as a global name server to avoid routing unrelated
         * domains to it (which is a privacy violation, will most probably fail anyway, and adds unnecessary load) */
        scope = FUNC2(s);
        if (scope && !FUNC1(scope)) {
                FUNC6("Scope of DNS server %s has only route-only domains, not using as global name server", FUNC3(s));
                return;
        }

        if (*count == MAXNS)
                FUNC5("# Too many DNS servers configured, the following entries may be ignored.\n", f);
        (*count)++;

        FUNC4(f, "nameserver %s\n", FUNC3(s));
}