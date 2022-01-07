
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ flags; int const* lpattr; int type; } ;
typedef int TAG ;
typedef TYPE_1__* PATTRINFO ;
typedef size_t DWORD ;


 scalar_t__ ATTRIBUTE_AVAILABLE ;
 size_t find_tag (int ) ;
 scalar_t__ wcscmp (int const*,int const*) ;
 int wine_dbgstr_w (int const*) ;
 int winetest_ok (int,char*,size_t,scalar_t__,...) ;

__attribute__((used)) static void expect_tag_str_imp(PATTRINFO pattr, TAG tag, const WCHAR* value)
{
    DWORD num = find_tag(tag);
    PATTRINFO p;

    if (num == ~0)
        return;

    p = &pattr[num];
    winetest_ok(p->type == tag, "expected entry #%d to be %x, was %x\n", num, tag, p->type);
    winetest_ok(p->flags == ATTRIBUTE_AVAILABLE, "expected entry #%d to be available, was %d\n", num, p->flags);
    winetest_ok(p->lpattr && wcscmp(p->lpattr, value) == 0, "expected entry #%d to be %s, was %s\n", num, wine_dbgstr_w(value), wine_dbgstr_w(p->lpattr));
}
