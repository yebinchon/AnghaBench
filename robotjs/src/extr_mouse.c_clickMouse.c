
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMMouseButton ;


 int toggleMouse (int,int ) ;

void clickMouse(MMMouseButton button)
{
 toggleMouse(1, button);
 toggleMouse(0, button);
}
