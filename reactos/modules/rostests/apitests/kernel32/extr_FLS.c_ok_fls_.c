
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* FlsCallback; } ;
struct TYPE_5__ {scalar_t__ FlsData; } ;
struct TYPE_4__ {scalar_t__ lpCallback; int * Unknown; } ;
typedef int * PVOID ;
typedef TYPE_1__* PFLS_CALLBACK_INFO ;
typedef scalar_t__ PFLS_CALLBACK_FUNCTION ;
typedef size_t DWORD ;


 int FlsCallback3 ;
 TYPE_3__* NtCurrentPeb () ;
 TYPE_2__* NtCurrentTeb () ;
 scalar_t__ WINVER_2003 ;
 int g_FlsExcept3 ;
 scalar_t__ g_WinVersion ;
 int * pFlsGetValue (size_t) ;
 int winetest_ok (int,char*,...) ;
 int winetest_skip (char*) ;

void ok_fls_(DWORD dwIndex, PVOID pValue, PFLS_CALLBACK_FUNCTION lpCallback)
{
    PFLS_CALLBACK_INFO FlsCallback;
    PVOID* FlsData;
    PVOID gotValue;

    FlsCallback = (PFLS_CALLBACK_INFO)NtCurrentPeb()->FlsCallback;
    FlsData = (PVOID*)NtCurrentTeb()->FlsData;

    winetest_ok(FlsData != ((void*)0), "Expected FlsData\n");
    winetest_ok(FlsCallback != ((void*)0), "Expected FlsCallback\n");

    if (FlsData == ((void*)0) || FlsCallback == ((void*)0))
    {
        winetest_skip("Unable to continue test\n");
        return;
    }

    if (g_WinVersion <= WINVER_2003)
    {
        winetest_ok(NtCurrentPeb()->FlsCallback[dwIndex] == lpCallback,
                    "Expected NtCurrentPeb()->FlsCallback[%lu] to be %p, was %p\n",
                    dwIndex,
                    lpCallback,
                    NtCurrentPeb()->FlsCallback[dwIndex]);
    }
    else
    {
        winetest_ok(FlsCallback[dwIndex].lpCallback == lpCallback,
                    "Expected FlsCallback[%lu].lpCallback to be %p, was %p\n",
                    dwIndex,
                    lpCallback,
                    FlsCallback[dwIndex].lpCallback);
        if (lpCallback != &FlsCallback3 || !g_FlsExcept3)
        {
            winetest_ok(FlsCallback[dwIndex].Unknown == ((void*)0),
                        "Expected FlsCallback[%lu].Unknown to be %p, was %p\n",
                        dwIndex,
                        ((void*)0),
                        FlsCallback[dwIndex].Unknown);
        }
    }
    winetest_ok(FlsData[dwIndex + 2] == pValue,
                "Expected FlsData[%lu + 2] to be %p, was %p\n",
                dwIndex,
                pValue,
                FlsData[dwIndex + 2]);

    gotValue = pFlsGetValue(dwIndex);
    winetest_ok(gotValue == pValue, "Expected FlsGetValue(%lu) to be %p, was %p\n", dwIndex, pValue, gotValue);
}
