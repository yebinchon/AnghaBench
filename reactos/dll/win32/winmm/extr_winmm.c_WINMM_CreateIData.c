
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HINSTANCE ;
typedef int BOOL ;


 void* CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 int InitializeCriticalSection (int *) ;
 int TRUE ;
 int WINMM_cs ;
 int hWinMM32Instance ;
 void* psLastEvent ;
 void* psStopEvent ;

__attribute__((used)) static BOOL WINMM_CreateIData(HINSTANCE hInstDLL)
{
    hWinMM32Instance = hInstDLL;
    psStopEvent = CreateEventW(((void*)0), TRUE, FALSE, ((void*)0));
    psLastEvent = CreateEventW(((void*)0), TRUE, FALSE, ((void*)0));
    InitializeCriticalSection(&WINMM_cs);
    return TRUE;
}
