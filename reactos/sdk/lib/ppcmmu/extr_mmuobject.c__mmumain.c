
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int srr1; int srr0; int dar; } ;
typedef TYPE_1__ ppc_trap_frame_t ;
typedef int paddr_t ;
typedef scalar_t__ MmuTrapHandler ;


 int FirstUsablePage ;
 int GetPhys (int) ;
 int SerialInterrupt (int,TYPE_1__*) ;
 int SerialSetUp (int,void*,int) ;
 int SetBat (int,int,int ,int ) ;
 int TakeException (int,TYPE_1__*) ;
 scalar_t__* callback ;
 int callkernel (void*,void*) ;
 int copy (TYPE_1__*,void*,int) ;
 int dumpmap () ;
 int initme () ;
 int mmuaddpage (void*,int) ;
 int mmuallocvsid (int,int) ;
 int mmudelpage (void*,int) ;
 int mmufreevsid (int,int) ;
 int mmugetpage (void*,int) ;
 int mmunewpage () ;
 int mmunitest () ;
 int mmusetramsize (int ) ;
 int mmusetvsid (int,int,int) ;
 int ptegreload (TYPE_1__*,int ) ;
 int trapcallback (int,TYPE_1__*) ;

int _mmumain(int action, void *arg1, void *arg2, void *arg3, void *tf)
{
    ppc_trap_frame_t *trap_frame = (action >= 0x100) ? tf : arg1;
    int ret = 0, tmp, i;

    switch(action)
    {

    case 3:
 if(!ptegreload(trap_frame, trap_frame->dar))
 {
            trapcallback(action, trap_frame);
        }
 break;
    case 4:
 if(!ptegreload(trap_frame, trap_frame->srr0))
        {
            trapcallback(action, trap_frame);
        }
 break;

    case 5:



        if (!SerialInterrupt(action, trap_frame) && callback[action])
        {
            trapcallback(action, trap_frame);
        }
        break;
    case 0:
    case 2:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xa:
    case 0xc:
    case 0x20:
        trapcallback(action, trap_frame);
        break;


    case 0x100:
 initme();
        trap_frame->srr1 |= 0x8000;
 break;
    case 0x101:
 ret = mmuaddpage(arg1, (int)arg2);
 break;
    case 0x102:
 mmudelpage(arg1, (int)arg2);
 break;
    case 0x103:
 mmusetvsid((int)arg1, (int)arg2, (int)arg3);
 break;
    case 0x104:
 ret = (int)callback[(int)arg1];
 callback[(int)arg1] = (MmuTrapHandler)arg2;
 break;
    case 0x105:
 mmugetpage(arg1, (int)arg2);
 break;
    case 0x106:
 ret = mmunitest();
 break;
    case 0x107:
        callkernel(arg1, arg2);
 break;
    case 0x108:
 mmusetramsize((paddr_t)arg1);
 break;
    case 0x109:
 return FirstUsablePage;
    case 0x10a:
 mmuallocvsid((int)arg1, (int)arg2);
 break;
    case 0x10b:
 mmufreevsid((int)arg1, (int)arg2);
 break;
    case 0x10c:
        ret = mmunewpage();
        break;
    case 0x10d:
        copy(trap_frame, (void *)0xf040, sizeof(*trap_frame));
        __asm__("mr 1,%0\n\tb trap_finish_start" : : "r"
                (((int)trap_frame) - 16));
        break;
    case 0x10e:
        dumpmap();
        break;

    case 0x200:
        SerialSetUp((int)arg1, arg2, 9600);
        break;
    case 0x201:
        TakeException((int)arg1, trap_frame);
        break;

    default:
 while(1);
    }
    if (action >= 0x100)
    {
        __asm__("mfmsr %0" : "=r" (tmp));
        tmp &= ~0x30;
        __asm__("mtmsr %0" : : "r" (tmp));

        for(i = 0; i < 4; i++) {
            SetBat(i, 0, GetPhys(0xf000 + i * 16), GetPhys(0xf004 + i * 16));
            SetBat(i, 1, GetPhys(0xf008 + i * 16), GetPhys(0xf00c + i * 16));
        }
    }

    return ret;
}
