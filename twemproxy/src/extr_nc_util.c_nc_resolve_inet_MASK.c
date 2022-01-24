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
struct string {scalar_t__ data; } ;
struct sockinfo {scalar_t__ addrlen; int /*<<< orphan*/  addr; int /*<<< orphan*/  family; } ;
struct addrinfo {int /*<<< orphan*/ * ai_addr; scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/ * ai_canonname; scalar_t__ ai_protocol; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  AI_NUMERICSERV ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NC_UINTMAX_MAXLEN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct string *name, int port, struct sockinfo *si)
{
    int status;
    struct addrinfo *ai, *cai; /* head and current addrinfo */
    struct addrinfo hints;
    char *node, service[NC_UINTMAX_MAXLEN];
    bool found;

    FUNC0(FUNC8(port));

    FUNC5(&hints, 0, sizeof(hints));
    hints.ai_flags = AI_NUMERICSERV;
    hints.ai_family = AF_UNSPEC;     /* AF_INET or AF_INET6 */
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = 0;
    hints.ai_addrlen = 0;
    hints.ai_addr = NULL;
    hints.ai_canonname = NULL;

    if (name != NULL) {
        node = (char *)name->data;
    } else {
        /*
         * If AI_PASSIVE flag is specified in hints.ai_flags, and node is
         * NULL, then the returned socket addresses will be suitable for
         * bind(2)ing a socket that will accept(2) connections. The returned
         * socket address will contain the wildcard IP address.
         */
        node = NULL;
        hints.ai_flags |= AI_PASSIVE;
    }

    FUNC7(service, NC_UINTMAX_MAXLEN, "%d", port);

    /*
     * getaddrinfo() returns zero on success or one of the error codes listed
     * in gai_strerror(3) if an error occurs
     */
    status = FUNC3(node, service, &hints, &ai);
    if (status != 0) {
        FUNC4("address resolution of node '%s' service '%s' failed: %s",
                  node, service, FUNC2(status));
        return -1;
    }

    /*
     * getaddrinfo() can return a linked list of more than one addrinfo,
     * since we requested for both AF_INET and AF_INET6 addresses and the
     * host itself can be multi-homed. Since we don't care whether we are
     * using ipv4 or ipv6, we just use the first address from this collection
     * in the order in which it was returned.
     *
     * The sorting function used within getaddrinfo() is defined in RFC 3484;
     * the order can be tweaked for a particular system by editing
     * /etc/gai.conf
     */
    for (cai = ai, found = false; cai != NULL; cai = cai->ai_next) {
        si->family = cai->ai_family;
        si->addrlen = cai->ai_addrlen;
        FUNC6(&si->addr, cai->ai_addr, si->addrlen);
        found = true;
        break;
    }

    FUNC1(ai);

    return !found ? -1 : 0;
}