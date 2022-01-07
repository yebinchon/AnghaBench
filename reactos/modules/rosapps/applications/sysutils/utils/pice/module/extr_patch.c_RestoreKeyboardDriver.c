
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DbgPrint (char*) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;

void RestoreKeyboardDriver(void)
{
    ENTER_FUNC();
    DbgPrint("RestoreKeyboardDriver: Not Implemented yet!!!\n");
 LEAVE_FUNC();
}
