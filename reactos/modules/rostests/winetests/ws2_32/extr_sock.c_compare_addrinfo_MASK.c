#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ ai_flags; scalar_t__ ai_family; scalar_t__ ai_socktype; scalar_t__ ai_protocol; scalar_t__ ai_addrlen; struct TYPE_8__* ai_canonname; int /*<<< orphan*/  ai_addr; struct TYPE_8__* ai_next; } ;
typedef  TYPE_1__ ADDRINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4 (ADDRINFO *a, ADDRINFO *b)
{
    for (; a && b ; a = a->ai_next, b = b->ai_next)
    {
        FUNC2(a->ai_flags == b->ai_flags,
           "Wrong flags %d != %d\n", a->ai_flags, b->ai_flags);
        FUNC2(a->ai_family == b->ai_family,
           "Wrong family %d != %d\n", a->ai_family, b->ai_family);
        FUNC2(a->ai_socktype == b->ai_socktype,
           "Wrong socktype %d != %d\n", a->ai_socktype, b->ai_socktype);
        FUNC2(a->ai_protocol == b->ai_protocol,
           "Wrong protocol %d != %d\n", a->ai_protocol, b->ai_protocol);
        FUNC2(a->ai_addrlen == b->ai_addrlen,
           "Wrong addrlen %lu != %lu\n", a->ai_addrlen, b->ai_addrlen);
        FUNC2(!FUNC0(a->ai_addr, b->ai_addr, FUNC1(a->ai_addrlen, b->ai_addrlen)),
           "Wrong address data\n");
        if (a->ai_canonname && b->ai_canonname)
        {
            FUNC2(!FUNC3(a->ai_canonname, b->ai_canonname), "Wrong canonical name '%s' != '%s'\n",
               a->ai_canonname, b->ai_canonname);
        }
        else
            FUNC2(!a->ai_canonname && !b->ai_canonname, "Expected both names absent (%p != %p)\n",
               a->ai_canonname, b->ai_canonname);
    }
    FUNC2(!a && !b, "Expected both addresses null (%p != %p)\n", a, b);
}