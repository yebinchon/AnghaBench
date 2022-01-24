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
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct in6_addr const*,char*,int) ; 

void FUNC4(FILE *f, const struct in6_addr *addresses, size_t size) {
        unsigned i;

        FUNC0(f);
        FUNC0(addresses);
        FUNC0(size);

        for (i = 0; i < size; i++) {
                char buffer[INET6_ADDRSTRLEN];

                FUNC2(FUNC3(AF_INET6, addresses+i, buffer, sizeof(buffer)), f);

                if (i < size - 1)
                        FUNC1(' ', f);
        }
}