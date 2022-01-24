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
 int /*<<< orphan*/  SOCK_CLOEXEC ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  connection_count ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 

__attribute__((used)) static void *FUNC6(void *data)
{
    int *lfd = data;

    for (;;)
    {
        int cfd = FUNC0(*lfd, NULL, NULL, SOCK_CLOEXEC);
        if (cfd == -1)
            continue;

        int canc = FUNC5();
        FUNC1(cfd);
        FUNC3(cfd);
        connection_count++;
        FUNC4(canc);
    }
    FUNC2();
}