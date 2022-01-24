#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {int cleanup; int /*<<< orphan*/ * server; int /*<<< orphan*/ * authority; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const**) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(xmlURIPtr uri, const char **str)
{
    const char *cur = *str;
    const char *host;

    host = cur;
    /*
     * IPv6 and future adressing scheme are enclosed between brackets
     */
    if (*cur == '[') {
        cur++;
	while ((*cur != ']') && (*cur != 0))
	    cur++;
	if (*cur != ']')
	    return(1);
	cur++;
	goto found;
    }
    /*
     * try to parse an IPv4
     */
    if (FUNC0(cur)) {
        if (FUNC7(&cur) != 0)
	    goto not_ipv4;
	if (*cur != '.')
	    goto not_ipv4;
	cur++;
        if (FUNC7(&cur) != 0)
	    goto not_ipv4;
	if (*cur != '.')
	    goto not_ipv4;
        if (FUNC7(&cur) != 0)
	    goto not_ipv4;
	if (*cur != '.')
	    goto not_ipv4;
        if (FUNC7(&cur) != 0)
	    goto not_ipv4;
	goto found;
not_ipv4:
        cur = *str;
    }
    /*
     * then this should be a hostname which can be empty
     */
    while (FUNC3(cur) || FUNC1(cur) || FUNC2(cur))
        FUNC4(cur);
found:
    if (uri != NULL) {
	if (uri->authority != NULL) FUNC6(uri->authority);
	uri->authority = NULL;
	if (uri->server != NULL) FUNC6(uri->server);
	if (cur != host) {
	    if (uri->cleanup & 2)
		uri->server = FUNC5(host, cur - host);
	    else
		uri->server = FUNC8(host, cur - host, NULL);
	} else
	    uri->server = NULL;
    }
    *str = cur;
    return(0);
}