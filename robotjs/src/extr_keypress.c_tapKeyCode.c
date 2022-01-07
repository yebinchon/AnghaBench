
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMKeyFlags ;
typedef int MMKeyCode ;


 int toggleKeyCode (int ,int,int ) ;

void tapKeyCode(MMKeyCode code, MMKeyFlags flags)
{
 toggleKeyCode(code, 1, flags);
 toggleKeyCode(code, 0, flags);
}
