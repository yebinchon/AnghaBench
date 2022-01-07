
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tm ;
typedef char WCHAR ;
struct TYPE_10__ {scalar_t__ abcA; scalar_t__ abcB; scalar_t__ abcC; } ;
struct TYPE_9__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_8__ {scalar_t__ tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef TYPE_2__ SIZE ;
typedef int * SCRIPT_STRING_ANALYSIS ;
typedef scalar_t__ HRESULT ;
typedef int HDC ;
typedef TYPE_3__ ABC ;


 int GetCharABCWidthsW (int ,char const,char const,TYPE_3__*) ;
 int GetTextMetricsW (int ,TYPE_1__*) ;
 int SSA_GLYPHS ;
 scalar_t__ S_OK ;
 scalar_t__ ScriptStringAnalyse (int ,char const*,int,int,int,int ,int ,int *,int *,int *,int *,int *,int **) ;
 scalar_t__ ScriptStringFree (int **) ;
 TYPE_2__* ScriptString_pSize (int *) ;
 scalar_t__ broken (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_ScriptString_pSize(HDC hdc)
{
    static const WCHAR textW[] = {'A',0};
    SCRIPT_STRING_ANALYSIS ssa;
    const SIZE *size;
    TEXTMETRICW tm;
    HRESULT hr;
    ABC abc;

    hr = ScriptStringAnalyse(hdc, textW, 1, 16, -1, SSA_GLYPHS, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &ssa);
    ok(hr == S_OK, "ScriptStringAnalyse failed, hr %#x.\n", hr);

    size = ScriptString_pSize(((void*)0));
    ok(size == ((void*)0) || broken(size != ((void*)0)) , "Unexpected size pointer.\n");

    GetCharABCWidthsW(hdc, textW[0], textW[0], &abc);

    memset(&tm, 0, sizeof(tm));
    GetTextMetricsW(hdc, &tm);
    ok(tm.tmHeight > 0, "Unexpected tmHeight.\n");

    size = ScriptString_pSize(ssa);
    ok(size != ((void*)0), "Unexpected size pointer.\n");
    ok(size->cx == abc.abcA + abc.abcB + abc.abcC, "Unexpected cx size %d.\n", size->cx);
    ok(size->cy == tm.tmHeight, "Unexpected cy size %d.\n", size->cy);

    hr = ScriptStringFree(&ssa);
    ok(hr == S_OK, "Failed to free ssa, hr %#x.\n", hr);
}
