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
typedef  int /*<<< orphan*/  vlc_thread_t ;
struct vlc_gai_req {char const* name; char* service; int error; struct addrinfo* result; int /*<<< orphan*/  done; struct addrinfo const* hints; } ;
struct addrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  portbuf ;

/* Variables and functions */
 int EAI_NONAME ; 
 int EAI_SYSTEM ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 scalar_t__ FUNC0 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vlc_gai_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_gai_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(const char *name, unsigned port,
                         const struct addrinfo *hints,
                         struct addrinfo **res)
{
    struct vlc_gai_req req =
    {
        .name = name,
        .service = NULL,
        .hints = hints,
    };
    char portbuf[6];
    vlc_thread_t th;

    if (port != 0)
    {
        if ((size_t)FUNC0(portbuf, sizeof (portbuf), "%u",
                             port) >= sizeof (portbuf))
            return EAI_NONAME;

        req.service = portbuf;
    }

    FUNC5(&req.done, 0);

    if (FUNC2(&th, vlc_gai_thread, &req, VLC_THREAD_PRIORITY_LOW))
    {
        FUNC4(&req.done);
        return EAI_SYSTEM;
    }

    FUNC6(&req.done);

    FUNC1(th);
    FUNC3(th, NULL);
    FUNC4(&req.done);

    *res = req.result;
    return req.error;
}