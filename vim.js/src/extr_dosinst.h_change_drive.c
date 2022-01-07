
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ah; int dl; int al; } ;
union REGS {TYPE_1__ h; } ;


 int SetCurrentDirectory (char*) ;
 int intdos (union REGS*,union REGS*) ;

int
change_drive(int drive)
{






    union REGS regs;

    regs.h.ah = 0x0e;
    regs.h.dl = drive - 1;
    intdos(&regs, &regs);
    regs.h.ah = 0x19;
    intdos(&regs, &regs);
    if (regs.h.al == drive - 1)
 return 0;

    return -1;

}
