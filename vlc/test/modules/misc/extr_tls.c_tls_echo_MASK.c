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
typedef  void vlc_tls_t ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  server_creds ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int FUNC4 (void*,char*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (void*,int) ; 
 int FUNC7 (void*,char*,int) ; 

__attribute__((used)) static void *FUNC8(void *data)
{
    vlc_tls_t *tls = data;
    ssize_t val;
    char buf[256];

    while ((val = FUNC5(server_creds, tls)) > 0)
    {
        struct pollfd ufd;

        switch (val)
        {
            case 1:  ufd.events = POLLIN;  break;
            case 2:  ufd.events = POLLOUT; break;
            default: FUNC1();
        }

        ufd.fd = FUNC3(tls, &ufd.events);
        FUNC0(&ufd, 1, -1);
    }

    if (val < 0)
        goto error;

    while ((val = FUNC4(tls, buf, sizeof (buf), false)) > 0)
        if (FUNC7(tls, buf, val) < val)
            goto error;

    if (val < 0 || FUNC6(tls, false))
        goto error;

    FUNC2(tls);
    return tls;
error:
    FUNC2(tls);
    return NULL;
}