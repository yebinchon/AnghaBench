
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ScriptId; scalar_t__ uiCodePage; int wszProportionalFont; int wszFixedWidthFont; int wszDescription; } ;
typedef TYPE_1__ SCRIPTINFO ;


 int lstrcmpW (int ,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void scriptinfo_cmp(SCRIPTINFO *sinfo1, SCRIPTINFO *sinfo2)
{
    ok(sinfo1->ScriptId == sinfo2->ScriptId, "ScriptId mismatch: %d != %d\n", sinfo1->ScriptId, sinfo2->ScriptId);
    ok(sinfo1->uiCodePage == sinfo2->uiCodePage, "uiCodePage mismatch: %u != %u\n", sinfo1->uiCodePage, sinfo2->uiCodePage);
    ok(!lstrcmpW(sinfo1->wszDescription, sinfo2->wszDescription), "wszDescription mismatch\n");
    ok(!lstrcmpW(sinfo1->wszFixedWidthFont, sinfo2->wszFixedWidthFont), "wszFixedWidthFont mismatch\n");
    ok(!lstrcmpW(sinfo1->wszProportionalFont, sinfo2->wszProportionalFont), "wszProportionalFont mismatch\n");
}
