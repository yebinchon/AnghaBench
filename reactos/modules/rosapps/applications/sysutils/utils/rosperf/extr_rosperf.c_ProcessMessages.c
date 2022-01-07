
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ message; int wParam; } ;
typedef TYPE_1__ MSG ;


 int DispatchMessageW (TYPE_1__*) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageW (TYPE_1__*,int *,int ,int ,int ) ;
 int TranslateMessage (TYPE_1__*) ;
 scalar_t__ WM_QUIT ;
 int exit (int ) ;

__attribute__((used)) static void
ProcessMessages(void)
{
  MSG Msg;

  while (PeekMessageW(&Msg, ((void*)0), 0, 0, PM_REMOVE))
    {
      if (WM_QUIT == Msg.message)
        {
          exit(Msg.wParam);
        }
      TranslateMessage(&Msg);
      DispatchMessageW(&Msg);
    }
}
