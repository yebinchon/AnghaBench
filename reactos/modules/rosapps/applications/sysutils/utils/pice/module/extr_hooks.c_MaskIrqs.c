
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int cli () ;
 int save_flags (int ) ;
 int ulOldFlags ;

void MaskIrqs(void)
{
    ENTER_FUNC();

    save_flags(ulOldFlags);
    cli();

    LEAVE_FUNC();
}
