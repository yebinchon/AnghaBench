
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;


 int DispatchMessageA (int *) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (int *,int *,int ,int ,int ) ;
 int TranslateMessage (int *) ;

__attribute__((used)) static void process_msgs(void)
{
    MSG msg;
    while(PeekMessageA( &msg, ((void*)0), 0, 0, PM_REMOVE))
    {
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
    }
}
