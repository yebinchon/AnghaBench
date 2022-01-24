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
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sbuf ;
typedef  struct in_addr const FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (struct in_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (char,struct in_addr const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct in_addr const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct in_addr const*,char*,int) ; 

size_t FUNC4(FILE *f,
                          const struct in_addr *addresses,
                          size_t size,
                          bool with_leading_space,
                          bool (*predicate)(const struct in_addr *addr)) {
        size_t count;
        size_t i;

        FUNC0(f);
        FUNC0(addresses);

        count = 0;

        for (i = 0; i < size; i++) {
                char sbuf[INET_ADDRSTRLEN];

                if (predicate && !predicate(&addresses[i]))
                        continue;
                if (with_leading_space)
                        FUNC1(' ', f);
                else
                        with_leading_space = true;
                FUNC2(FUNC3(AF_INET, &addresses[i], sbuf, sizeof(sbuf)), f);
                count++;
        }

        return count;
}