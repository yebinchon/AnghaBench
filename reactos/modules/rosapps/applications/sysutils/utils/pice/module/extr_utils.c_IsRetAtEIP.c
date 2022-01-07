
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PUCHAR ;
typedef int BOOLEAN ;


 int CurrentCS ;
 int CurrentEIP ;
 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int FALSE ;
 scalar_t__ GetLinearAddress (int ,int ) ;
 int LEAVE_FUNC () ;
 int TRUE ;

BOOLEAN IsRetAtEIP(void)
{
 PUCHAR linear;
 BOOLEAN bResult = FALSE;

    ENTER_FUNC();
 DPRINT((0,"IsRetAtEIP()\n"));

 linear=(PUCHAR)GetLinearAddress(CurrentCS,CurrentEIP);

    switch(*linear)
    {
        case 0xc2:
        case 0xc3:
        case 0xca:
        case 0xcb:
        case 0xcf:
   bResult = TRUE;
            break;
    }

    LEAVE_FUNC();

    return bResult;
}
