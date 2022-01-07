
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
typedef int FILE ;


 int CPU_FLAGS ;
 int VLC_CPU_3dNOW ;
 int VLC_CPU_ALTIVEC ;
 int VLC_CPU_ARM_NEON ;
 int VLC_CPU_ARM_SVE ;
 int VLC_CPU_ARMv6 ;
 int VLC_CPU_AVX ;
 int VLC_CPU_AVX2 ;
 int VLC_CPU_FMA4 ;
 int VLC_CPU_MMX ;
 int VLC_CPU_MMXEXT ;
 int VLC_CPU_SSE ;
 int VLC_CPU_SSE2 ;
 int VLC_CPU_SSE3 ;
 int VLC_CPU_SSE4A ;
 int VLC_CPU_SSE4_1 ;
 int VLC_CPU_SSE4_2 ;
 int VLC_CPU_SSSE3 ;
 int VLC_CPU_XOP ;
 int cpu_flags ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int sscanf (char*,char*,unsigned int*) ;
 int strcmp (char*,char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void vlc_CPU_init (void)
{
    FILE *info = fopen ("/proc/cpuinfo", "rte");
    if (info == ((void*)0))
        return;

    char *line = ((void*)0);
    size_t linelen = 0;
    uint_fast32_t all_caps = 0xFFFFFFFF;

    while (getline (&line, &linelen, info) != -1)
    {
        char *p = line, *cap;
        uint_fast32_t core_caps = 0;






        if (strncmp (line, CPU_FLAGS, strlen (CPU_FLAGS)))
            continue;

        while ((cap = strsep (&p, " ")) != ((void*)0))
        {
            if (!strcmp (cap, "mmx"))
                core_caps |= VLC_CPU_MMX;
            if (!strcmp (cap, "sse"))
                core_caps |= VLC_CPU_SSE | VLC_CPU_MMXEXT;
            if (!strcmp (cap, "mmxext"))
                core_caps |= VLC_CPU_MMXEXT;
            if (!strcmp (cap, "sse2"))
                core_caps |= VLC_CPU_SSE2;
            if (!strcmp (cap, "pni"))
                core_caps |= VLC_CPU_SSE3;
            if (!strcmp (cap, "ssse3"))
                core_caps |= VLC_CPU_SSSE3;
            if (!strcmp (cap, "sse4_1"))
                core_caps |= VLC_CPU_SSE4_1;
            if (!strcmp (cap, "sse4_2"))
                core_caps |= VLC_CPU_SSE4_2;
            if (!strcmp (cap, "sse4a"))
                core_caps |= VLC_CPU_SSE4A;
            if (!strcmp (cap, "avx"))
                core_caps |= VLC_CPU_AVX;
            if (!strcmp (cap, "avx2"))
                core_caps |= VLC_CPU_AVX2;
            if (!strcmp (cap, "3dnow"))
                core_caps |= VLC_CPU_3dNOW;
            if (!strcmp (cap, "xop"))
                core_caps |= VLC_CPU_XOP;
            if (!strcmp (cap, "fma4"))
                core_caps |= VLC_CPU_FMA4;





        }


        all_caps &= core_caps;
    }
    fclose (info);
    free (line);

    if (all_caps == 0xFFFFFFFF)
        all_caps = 0;

    cpu_flags = all_caps;
}
