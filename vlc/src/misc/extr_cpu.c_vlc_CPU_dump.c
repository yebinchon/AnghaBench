
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct vlc_memstream {int ptr; } ;


 int free (int ) ;
 int msg_Dbg (int *,char*,int ) ;
 scalar_t__ vlc_CPU_3dNOW () ;
 scalar_t__ vlc_CPU_ALTIVEC () ;
 scalar_t__ vlc_CPU_ARM_NEON () ;
 scalar_t__ vlc_CPU_AVX () ;
 scalar_t__ vlc_CPU_AVX2 () ;
 scalar_t__ vlc_CPU_FMA4 () ;
 scalar_t__ vlc_CPU_MMX () ;
 scalar_t__ vlc_CPU_MMXEXT () ;
 scalar_t__ vlc_CPU_SSE () ;
 scalar_t__ vlc_CPU_SSE2 () ;
 scalar_t__ vlc_CPU_SSE3 () ;
 scalar_t__ vlc_CPU_SSE4A () ;
 scalar_t__ vlc_CPU_SSE4_1 () ;
 scalar_t__ vlc_CPU_SSE4_2 () ;
 scalar_t__ vlc_CPU_SSSE3 () ;
 scalar_t__ vlc_CPU_XOP () ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 int vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;

void vlc_CPU_dump (vlc_object_t *obj)
{
    struct vlc_memstream stream;

    vlc_memstream_open(&stream);


    if (vlc_CPU_MMX())
        vlc_memstream_puts(&stream, "MMX ");
    if (vlc_CPU_MMXEXT())
        vlc_memstream_puts(&stream, "MMXEXT ");
    if (vlc_CPU_SSE())
        vlc_memstream_puts(&stream, "SSE ");
    if (vlc_CPU_SSE2())
        vlc_memstream_puts(&stream, "SSE2 ");
    if (vlc_CPU_SSE3())
        vlc_memstream_puts(&stream, "SSE3 ");
    if (vlc_CPU_SSSE3())
        vlc_memstream_puts(&stream, "SSSE3 ");
    if (vlc_CPU_SSE4_1())
        vlc_memstream_puts(&stream, "SSE4.1 ");
    if (vlc_CPU_SSE4_2())
        vlc_memstream_puts(&stream, "SSE4.2 ");
    if (vlc_CPU_SSE4A())
        vlc_memstream_puts(&stream, "SSE4A ");
    if (vlc_CPU_AVX())
        vlc_memstream_puts(&stream, "AVX ");
    if (vlc_CPU_AVX2())
        vlc_memstream_puts(&stream, "AVX2 ");
    if (vlc_CPU_3dNOW())
        vlc_memstream_puts(&stream, "3DNow! ");
    if (vlc_CPU_XOP())
        vlc_memstream_puts(&stream, "XOP ");
    if (vlc_CPU_FMA4())
        vlc_memstream_puts(&stream, "FMA4 ");
    if (vlc_memstream_close(&stream) == 0)
    {
        msg_Dbg (obj, "CPU has capabilities %s", stream.ptr);
        free(stream.ptr);
    }
}
