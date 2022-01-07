
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int restore_flags (int ) ;
 int ulOldFlags ;

void UnmaskIrqs(void)
{
    ENTER_FUNC();

    restore_flags(ulOldFlags);

    LEAVE_FUNC();
}
