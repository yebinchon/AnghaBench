
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int GHOST_TIMER_ID ;
 int KillTimer (int ,int ) ;

__attribute__((used)) static void
Ghost_OnDestroy(HWND hwnd)
{
    KillTimer(hwnd, GHOST_TIMER_ID);
}
