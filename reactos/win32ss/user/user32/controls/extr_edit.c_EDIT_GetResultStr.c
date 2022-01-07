
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {scalar_t__ selection_end; scalar_t__ composition_start; scalar_t__ selection_start; scalar_t__ composition_len; } ;
typedef scalar_t__* LPWSTR ;
typedef int LONG ;
typedef int HIMC ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_EM_ReplaceSel (TYPE_1__*,int ,scalar_t__*,int ,int ) ;
 int ERR (char*) ;
 int GCS_RESULTSTR ;
 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int ImmGetCompositionStringW (int ,int ,scalar_t__*,int) ;
 int TRUE ;

__attribute__((used)) static void EDIT_GetResultStr(HIMC hIMC, EDITSTATE *es)
{
    LONG buflen;
    LPWSTR lpResultStr;

    buflen = ImmGetCompositionStringW(hIMC, GCS_RESULTSTR, ((void*)0), 0);
    if (buflen <= 0)
    {
        return;
    }

    lpResultStr = HeapAlloc(GetProcessHeap(),0, buflen+sizeof(WCHAR));
    if (!lpResultStr)
    {
        ERR("Unable to alloc buffer for IME string\n");
        return;
    }

    ImmGetCompositionStringW(hIMC, GCS_RESULTSTR, lpResultStr, buflen);
    lpResultStr[buflen/sizeof(WCHAR)] = 0;


    if (es->selection_end < es->composition_start)
        es->composition_start = es->selection_end;

    es->selection_start = es->composition_start;
    es->selection_end = es->composition_start + es->composition_len;
    EDIT_EM_ReplaceSel(es, TRUE, lpResultStr, TRUE, TRUE);
    es->composition_start = es->selection_end;
    es->composition_len = 0;

    HeapFree(GetProcessHeap(),0,lpResultStr);
}
