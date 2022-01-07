
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int MSG ;


 int DispatchMessageA (int *) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (int *,int *,int ,int ,int ) ;
 int Sleep (int) ;
 int TranslateMessage (int *) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void keep_responsive(time_t delay_time)
{
    MSG msg;
    time_t end;



    end = time(((void*)0)) + delay_time;
    while (time(((void*)0)) < end) {
      if (PeekMessageA(&msg, ((void*)0), 0, 0, PM_REMOVE)) {
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
      } else {
        Sleep(50);
      }
    }
}
