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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 char ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

char FUNC6(Tox *m)
{
    char c;
    int slpval = FUNC5(m);

    fd_set fds;
    FUNC1(&fds);
    FUNC0(0, &fds);
    struct timeval tv;
    tv.tv_sec = 0;
    tv.tv_usec = slpval * 1000;

    c = ERR;
    int n = FUNC4(1, &fds, NULL, NULL, &tv);

    if (n < 0) {
        FUNC3("select error: maybe interupted");
    } else if (n == 0) {
    } else {
        c = FUNC2();
    }

    return c;
}