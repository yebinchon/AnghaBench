
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (int ) ;
 int DeleteCriticalSection (int *) ;
 int TIME_MMTimeStop () ;
 int WINMM_cs ;
 int psLastEvent ;
 int psStopEvent ;

__attribute__((used)) static void WINMM_DeleteIData(void)
{
    TIME_MMTimeStop();



    CloseHandle(psStopEvent);
    CloseHandle(psLastEvent);
    DeleteCriticalSection(&WINMM_cs);
}
