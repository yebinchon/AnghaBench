
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t USHORT ;
struct TYPE_2__ {int bScrollDisabled; } ;


 int ENTER_FUNC () ;
 int FALSE ;
 int LEAVE_FUNC () ;
 TYPE_1__* wWindow ;

void EnableScroll(USHORT Window)
{
    ENTER_FUNC();
 wWindow[Window].bScrollDisabled=FALSE;
    LEAVE_FUNC();
}
