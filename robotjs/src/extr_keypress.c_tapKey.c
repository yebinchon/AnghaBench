
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMKeyFlags ;


 int toggleKey (char,int,int ) ;

void tapKey(char c, MMKeyFlags flags)
{
 toggleKey(c, 1, flags);
 toggleKey(c, 0, flags);
}
