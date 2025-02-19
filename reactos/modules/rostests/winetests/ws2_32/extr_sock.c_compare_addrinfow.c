
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ai_flags; scalar_t__ ai_family; scalar_t__ ai_socktype; scalar_t__ ai_protocol; scalar_t__ ai_addrlen; struct TYPE_10__* ai_canonname; int ai_addr; struct TYPE_10__* ai_next; } ;
typedef TYPE_1__ ADDRINFOW ;


 int lstrcmpW (TYPE_1__*,TYPE_1__*) ;
 int memcmp (int ,int ,int ) ;
 int min (TYPE_1__*,TYPE_1__*) ;
 int ok (int,char*,...) ;
 TYPE_1__* wine_dbgstr_w (TYPE_1__*) ;

__attribute__((used)) static void compare_addrinfow (ADDRINFOW *a, ADDRINFOW *b)
{
    for (; a && b ; a = a->ai_next, b = b->ai_next)
    {
        ok(a->ai_flags == b->ai_flags,
           "Wrong flags %d != %d\n", a->ai_flags, b->ai_flags);
        ok(a->ai_family == b->ai_family,
           "Wrong family %d != %d\n", a->ai_family, b->ai_family);
        ok(a->ai_socktype == b->ai_socktype,
           "Wrong socktype %d != %d\n", a->ai_socktype, b->ai_socktype);
        ok(a->ai_protocol == b->ai_protocol,
           "Wrong protocol %d != %d\n", a->ai_protocol, b->ai_protocol);
        ok(a->ai_addrlen == b->ai_addrlen,
           "Wrong addrlen %lu != %lu\n", a->ai_addrlen, b->ai_addrlen);
        ok(!memcmp(a->ai_addr, b->ai_addr, min(a->ai_addrlen, b->ai_addrlen)),
           "Wrong address data\n");
        if (a->ai_canonname && b->ai_canonname)
        {
            ok(!lstrcmpW(a->ai_canonname, b->ai_canonname), "Wrong canonical name '%s' != '%s'\n",
               wine_dbgstr_w(a->ai_canonname), wine_dbgstr_w(b->ai_canonname));
        }
        else
            ok(!a->ai_canonname && !b->ai_canonname, "Expected both names absent (%p != %p)\n",
               a->ai_canonname, b->ai_canonname);
    }
    ok(!a && !b, "Expected both addresses null (%p != %p)\n", a, b);
}
