
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwFlags; scalar_t__ uiCodePage; scalar_t__ uiFamilyCodePage; scalar_t__ bGDICharset; int wszProportionalFont; int wszFixedWidthFont; int wszBodyCharset; int wszHeaderCharset; int wszWebCharset; int wszDescription; } ;
typedef TYPE_1__ MIMECPINFO ;


 int lstrcmpW (int ,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void cpinfo_cmp(MIMECPINFO *cpinfo1, MIMECPINFO *cpinfo2)
{
    ok(cpinfo1->dwFlags == cpinfo2->dwFlags, "dwFlags mismatch: %08x != %08x\n", cpinfo1->dwFlags, cpinfo2->dwFlags);
    ok(cpinfo1->uiCodePage == cpinfo2->uiCodePage, "uiCodePage mismatch: %u != %u\n", cpinfo1->uiCodePage, cpinfo2->uiCodePage);
    ok(cpinfo1->uiFamilyCodePage == cpinfo2->uiFamilyCodePage, "uiFamilyCodePage mismatch: %u != %u\n", cpinfo1->uiFamilyCodePage, cpinfo2->uiFamilyCodePage);
    ok(!lstrcmpW(cpinfo1->wszDescription, cpinfo2->wszDescription), "wszDescription mismatch\n");
    ok(!lstrcmpW(cpinfo1->wszWebCharset, cpinfo2->wszWebCharset), "wszWebCharset mismatch\n");
    ok(!lstrcmpW(cpinfo1->wszHeaderCharset, cpinfo2->wszHeaderCharset), "wszHeaderCharset mismatch\n");
    ok(!lstrcmpW(cpinfo1->wszBodyCharset, cpinfo2->wszBodyCharset), "wszBodyCharset mismatch\n");
    ok(!lstrcmpW(cpinfo1->wszFixedWidthFont, cpinfo2->wszFixedWidthFont), "wszFixedWidthFont mismatch\n");
    ok(!lstrcmpW(cpinfo1->wszProportionalFont, cpinfo2->wszProportionalFont), "wszProportionalFont mismatch\n");
    ok(cpinfo1->bGDICharset == cpinfo2->bGDICharset, "bGDICharset mismatch: %d != %d\n", cpinfo1->bGDICharset, cpinfo2->bGDICharset);
}
