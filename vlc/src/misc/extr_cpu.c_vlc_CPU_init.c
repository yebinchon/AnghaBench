
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int i_has_altivec ;


 int Altivec_test ;
 int CPU_ALTIVEC ;
 int CTL_HW ;
 int CTL_MACHDEP ;
 int HW_VECTORUNIT ;
 int SSE_test ;
 int ThreeD_Now_test ;
 int VLC_CPU_3dNOW ;
 int VLC_CPU_ALTIVEC ;
 int VLC_CPU_MMX ;
 int VLC_CPU_MMXEXT ;
 int VLC_CPU_SSE ;
 int VLC_CPU_SSE2 ;
 int VLC_CPU_SSE3 ;
 int VLC_CPU_SSE4_1 ;
 int VLC_CPU_SSE4_2 ;
 int VLC_CPU_SSSE3 ;
 int cpu_flags ;
 int cpuid (int) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;
 scalar_t__ vlc_CPU_check (char*,int ) ;

__attribute__((used)) static void vlc_CPU_init(void)
{
    uint32_t i_capabilities = 0;


     unsigned int i_eax, i_ebx, i_ecx, i_edx;
     bool b_amd;
    asm volatile ("cpuid\n\t" : "=a" (i_eax), "=b" (i_ebx), "=c" (i_ecx), "=d" (i_edx) : "a" (0x00000000) : "cc");;
    b_amd = ( i_ebx == 0x68747541 ) && ( i_ecx == 0x444d4163 )
                    && ( i_edx == 0x69746e65 );


    asm volatile ("cpuid\n\t" : "=a" (i_eax), "=b" (i_ebx), "=c" (i_ecx), "=d" (i_edx) : "a" (0x00000001) : "cc");;




    i_capabilities |= VLC_CPU_MMX;

    if( i_edx & 0x02000000 )
        i_capabilities |= VLC_CPU_MMXEXT;



    {

            i_capabilities |= VLC_CPU_SSE;
        if (i_edx & 0x04000000)
            i_capabilities |= VLC_CPU_SSE2;
        if (i_ecx & 0x00000001)
            i_capabilities |= VLC_CPU_SSE3;
        if (i_ecx & 0x00000200)
            i_capabilities |= VLC_CPU_SSSE3;
        if (i_ecx & 0x00080000)
            i_capabilities |= VLC_CPU_SSE4_1;
        if (i_ecx & 0x00100000)
            i_capabilities |= VLC_CPU_SSE4_2;
    }


    asm volatile ("cpuid\n\t" : "=a" (i_eax), "=b" (i_ebx), "=c" (i_ecx), "=d" (i_edx) : "a" (0x80000000) : "cc");;

    if( i_eax < 0x80000001 )
        goto out;


    asm volatile ("cpuid\n\t" : "=a" (i_eax), "=b" (i_ebx), "=c" (i_ecx), "=d" (i_edx) : "a" (0x80000001) : "cc");;




        i_capabilities |= VLC_CPU_3dNOW;

    if( b_amd && ( i_edx & 0x00400000 ) )
        i_capabilities |= VLC_CPU_MMXEXT;
out:
    cpu_flags = i_capabilities;
}
