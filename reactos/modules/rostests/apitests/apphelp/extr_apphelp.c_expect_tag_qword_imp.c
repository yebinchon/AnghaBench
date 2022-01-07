
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ flags; scalar_t__ qwattr; } ;
typedef scalar_t__ TAG ;
typedef scalar_t__ QWORD ;
typedef TYPE_1__* PATTRINFO ;
typedef size_t DWORD ;


 scalar_t__ ATTRIBUTE_AVAILABLE ;
 size_t find_tag (scalar_t__) ;
 int winetest_ok (int,char*,size_t,scalar_t__,...) ;

__attribute__((used)) static void expect_tag_qword_imp(PATTRINFO pattr, TAG tag, QWORD value)
{
    DWORD num = find_tag(tag);
    PATTRINFO p;

    if (num == ~0)
        return;

    p = &pattr[num];
    winetest_ok(p->type == tag, "expected entry #%d to be %x, was %x\n", num, tag, p->type);
    winetest_ok(p->flags == ATTRIBUTE_AVAILABLE, "expected entry #%d to be available, was %d\n", num, p->flags);
    winetest_ok(p->qwattr == value, "expected entry #%d to be 0x%I64x, was 0x%I64x\n", num, value, p->qwattr);
}
