
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ flags; scalar_t__ qwattr; } ;
typedef int TAG ;
typedef TYPE_1__* PATTRINFO ;
typedef size_t DWORD ;


 scalar_t__ ATTRIBUTE_FAILED ;
 scalar_t__ TAG_NULL ;
 size_t find_tag (int ) ;
 int winetest_ok (int,char*,size_t,scalar_t__) ;

__attribute__((used)) static void expect_tag_skip_imp(PATTRINFO pattr, TAG tag)
{
    DWORD num = find_tag(tag);
    PATTRINFO p;

    if (num == ~0)
        return;

    p = &pattr[num];
    winetest_ok(p->type == TAG_NULL, "expected entry #%d to be TAG_NULL, was %x\n", num, p->type);
    winetest_ok(p->flags == ATTRIBUTE_FAILED, "expected entry #%d to be failed, was %d\n", num, p->flags);
    winetest_ok(p->qwattr == 0, "expected entry #%d to be 0, was 0x%I64x\n", num, p->qwattr);
}
