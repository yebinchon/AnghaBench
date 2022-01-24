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
typedef  union in_addr_union {int dummy; } in_addr_union ;

/* Variables and functions */
 int /*<<< orphan*/  PREFIXLEN_LEGACY ; 
 int /*<<< orphan*/  PREFIXLEN_REFUSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,union in_addr_union*,union in_addr_union const*) ; 
 int FUNC2 (char const*,int,union in_addr_union*,unsigned char*) ; 
 int FUNC3 (char const*,int*,union in_addr_union*,unsigned char*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int*,union in_addr_union*,unsigned char*) ; 

__attribute__((used)) static void FUNC5(
                const char *p,
                int family,
                int ret,
                const union in_addr_union *u,
                unsigned char prefixlen,
                int ret_refuse,
                unsigned char prefixlen_refuse,
                int ret_legacy,
                unsigned char prefixlen_legacy) {

        union in_addr_union q;
        unsigned char l;
        int f, r;

        r = FUNC2(p, family, &q, &l);
        FUNC0(r == ret);

        if (r < 0)
                return;

        FUNC0(FUNC1(family, &q, u));
        FUNC0(l == prefixlen);

        r = FUNC3(p, &f, &q, &l);
        FUNC0(r >= 0);

        FUNC0(f == family);
        FUNC0(FUNC1(family, &q, u));
        FUNC0(l == prefixlen);

        r = FUNC4(p, PREFIXLEN_REFUSE, &f, &q, &l);
        FUNC0(r == ret_refuse);

        if (r >= 0) {
                FUNC0(f == family);
                FUNC0(FUNC1(family, &q, u));
                FUNC0(l == prefixlen_refuse);
        }

        r = FUNC4(p, PREFIXLEN_LEGACY, &f, &q, &l);
        FUNC0(r == ret_legacy);

        if (r >= 0) {
                FUNC0(f == family);
                FUNC0(FUNC1(family, &q, u));
                FUNC0(l == prefixlen_legacy);
        }
}