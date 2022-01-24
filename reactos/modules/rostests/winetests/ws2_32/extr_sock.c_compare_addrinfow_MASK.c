#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ ai_flags; scalar_t__ ai_family; scalar_t__ ai_socktype; scalar_t__ ai_protocol; scalar_t__ ai_addrlen; struct TYPE_10__* ai_canonname; int /*<<< orphan*/  ai_addr; struct TYPE_10__* ai_next; } ;
typedef  TYPE_1__ ADDRINFOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5 (ADDRINFOW *a, ADDRINFOW *b)
{
    for (; a && b ; a = a->ai_next, b = b->ai_next)
    {
        FUNC3(a->ai_flags == b->ai_flags,
           "Wrong flags %d != %d\n", a->ai_flags, b->ai_flags);
        FUNC3(a->ai_family == b->ai_family,
           "Wrong family %d != %d\n", a->ai_family, b->ai_family);
        FUNC3(a->ai_socktype == b->ai_socktype,
           "Wrong socktype %d != %d\n", a->ai_socktype, b->ai_socktype);
        FUNC3(a->ai_protocol == b->ai_protocol,
           "Wrong protocol %d != %d\n", a->ai_protocol, b->ai_protocol);
        FUNC3(a->ai_addrlen == b->ai_addrlen,
           "Wrong addrlen %lu != %lu\n", a->ai_addrlen, b->ai_addrlen);
        FUNC3(!FUNC1(a->ai_addr, b->ai_addr, FUNC2(a->ai_addrlen, b->ai_addrlen)),
           "Wrong address data\n");
        if (a->ai_canonname && b->ai_canonname)
        {
            FUNC3(!FUNC0(a->ai_canonname, b->ai_canonname), "Wrong canonical name '%s' != '%s'\n",
               FUNC4(a->ai_canonname), FUNC4(b->ai_canonname));
        }
        else
            FUNC3(!a->ai_canonname && !b->ai_canonname, "Expected both names absent (%p != %p)\n",
               a->ai_canonname, b->ai_canonname);
    }
    FUNC3(!a && !b, "Expected both addresses null (%p != %p)\n", a, b);
}