
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int DPRINT (int ) ;

void SetHardwareBreakPoint(ULONG ulAddress,ULONG ulReg)
{
    ULONG mask = 0x300;
    ULONG enable_mask = 0x3;

    DPRINT((0,"SetHardwareBreakPoint(%x,DR%x)\n",ulAddress,ulReg));

    enable_mask <<= (ulReg*2);
    mask |= enable_mask;

    DPRINT((0,"mask = %x\n",mask));

 __asm__ __volatile__
 ("\n\t 		xorl %%eax,%%eax\n\t 		mov %%eax,%%dr6\n\t         mov %%dr7,%%eax\n\t         orl %0,%%eax\n\t 		mov %%eax,%%dr7\n\t 	"






 :
 :"m" (mask)
 :"eax");

    switch(ulReg)
    {
        case 0:
            __asm__ __volatile__
            ("\n\t         		mov %0,%%eax\n\t 		        mov %%eax,%%dr0\n\t              "



             :
             :"m" (ulAddress)
             :"eax");
             break;
        case 1:
            __asm__ __volatile__
            ("\n\t         		mov %0,%%eax\n\t 		        mov %%eax,%%dr1\n\t              "



             :
             :"m" (ulAddress)
             :"eax");
             break;
        case 2:
            __asm__ __volatile__
            ("\n\t         		mov %0,%%eax\n\t 		        mov %%eax,%%dr2\n\t              "



             :
             :"m" (ulAddress)
             :"eax");
             break;
        case 3:
            __asm__ __volatile__
            ("\n\t         		mov %0,%%eax\n\t 		        mov %%eax,%%dr3\n\t              "



             :
             :"m" (ulAddress)
             :"eax");
             break;
    }
}
