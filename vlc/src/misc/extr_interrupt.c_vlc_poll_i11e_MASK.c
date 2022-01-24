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
typedef  int /*<<< orphan*/  vlc_interrupt_t ;
struct pollfd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pollfd*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct pollfd*,unsigned int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct pollfd* FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) (struct pollfd*),struct pollfd*) ; 
 int /*<<< orphan*/ * vlc_interrupt_var ; 
 int FUNC7 (struct pollfd*,unsigned int,int,int /*<<< orphan*/ *,struct pollfd*) ; 

int FUNC8(struct pollfd *fds, unsigned nfds, int timeout)
{
    vlc_interrupt_t *ctx = vlc_interrupt_var;
    if (ctx == NULL)
        return FUNC2(fds, nfds, timeout);

    int ret;

    if (FUNC1(nfds < 255))
    {   /* Fast path with stack allocation */
        struct pollfd ufd[nfds + 1];

        ret = FUNC7(fds, nfds, timeout, ctx, ufd);
    }
    else
    {   /* Slow path but poll() is slow with large nfds anyway. */
        struct pollfd *ufd = FUNC4(nfds + 1, sizeof (*ufd));
        if (FUNC3(ufd == NULL))
            return -1; /* ENOMEM */

        FUNC6(free, ufd);
        ret = FUNC7(fds, nfds, timeout, ctx, ufd);
        FUNC5();
        FUNC0(ufd);
    }
    return ret;
}