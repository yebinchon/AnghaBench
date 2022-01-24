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
struct addrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  portbuf ;
typedef  int /*<<< orphan*/  hostbuf ;

/* Variables and functions */
 int EAI_SERVICE ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,char*,struct addrinfo const*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned int) ; 
 size_t FUNC4 (char const*) ; 

int FUNC5 (const char *node, unsigned port,
                     const struct addrinfo *hints, struct addrinfo **res)
{
    char hostbuf[NI_MAXHOST], portbuf[6], *servname;

    /*
     * In VLC, we always use port number as integer rather than strings
     * for historical reasons (and portability).
     */
    if (port != 0)
    {
        if (port > 65535)
            return EAI_SERVICE;
        /* cannot overflow */
        FUNC3 (portbuf, sizeof (portbuf), "%u", port);
        servname = portbuf;
    }
    else
        servname = NULL;

    /*
     * VLC extensions :
     * - accept the empty string as unspecified host (i.e. NULL)
     * - ignore square brackets (for IPv6 numerals)
     */
    if (node != NULL)
    {
        if (node[0] == '[')
        {
            size_t len = FUNC4 (node + 1);
            if ((len <= sizeof (hostbuf)) && (node[len] == ']'))
            {
                FUNC0 (len > 0);
                FUNC2 (hostbuf, node + 1, len - 1);
                hostbuf[len - 1] = '\0';
                node = hostbuf;
            }
        }
        if (node[0] == '\0')
            node = NULL;
    }

    return FUNC1 (node, servname, hints, res);
}