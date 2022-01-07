
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t type; scalar_t__ flags; size_t dwattr; } ;
typedef size_t TAG ;
typedef TYPE_1__* PATTRINFO ;
typedef size_t DWORD ;


 scalar_t__ ATTRIBUTE_AVAILABLE ;
 size_t find_tag (size_t) ;
 int winetest_ok (int,char*,size_t,size_t,...) ;

__attribute__((used)) static void expect_tag_dword_imp(PATTRINFO pattr, TAG tag, DWORD value)
{
    DWORD num = find_tag(tag);
    PATTRINFO p;

    if (num == ~0)
        return;

    p = &pattr[num];
    winetest_ok(p->type == tag, "expected entry #%d to be %x, was %x\n", num, tag, p->type);
    winetest_ok(p->flags == ATTRIBUTE_AVAILABLE, "expected entry #%d to be available, was %d\n", num, p->flags);
    winetest_ok(p->dwattr == value, "expected entry #%d to be 0x%x, was 0x%x\n", num, value, p->dwattr);
}
