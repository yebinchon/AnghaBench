
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;
typedef int BOOL ;


 int DispatchMessageW (int *) ;
 scalar_t__ GetMessageW (int *,int *,int ,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageW (int *,int *,int ,int ,int ) ;
 int TranslateMessage (int *) ;

__attribute__((used)) static void pump_msgs(BOOL *b)
{
    MSG msg;

    if(b) {
        while(!*b && GetMessageW(&msg, ((void*)0), 0, 0)) {
            TranslateMessage(&msg);
            DispatchMessageW(&msg);
        }
    }else {
        while(PeekMessageW(&msg, ((void*)0), 0, 0, PM_REMOVE)) {
            TranslateMessage(&msg);
            DispatchMessageW(&msg);
        }
    }
}
