
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;


 int PM_REMOVE ;
 scalar_t__ PeekMessageA (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void flush_messages(void)
{
    MSG msg;
    while (PeekMessageA( &msg, 0, 0, 0, PM_REMOVE ));
}
