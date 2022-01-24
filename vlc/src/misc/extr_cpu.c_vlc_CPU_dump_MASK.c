#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_memstream {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC19 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC20 (struct vlc_memstream*,char*) ; 

void FUNC21 (vlc_object_t *obj)
{
    struct vlc_memstream stream;

    FUNC19(&stream);

#if defined (__i386__) || defined (__x86_64__)
    if (FUNC8())
        FUNC20(&stream, "MMX ");
    if (FUNC9())
        FUNC20(&stream, "MMXEXT ");
    if (FUNC10())
        FUNC20(&stream, "SSE ");
    if (FUNC11())
        FUNC20(&stream, "SSE2 ");
    if (FUNC12())
        FUNC20(&stream, "SSE3 ");
    if (FUNC16())
        FUNC20(&stream, "SSSE3 ");
    if (FUNC14())
        FUNC20(&stream, "SSE4.1 ");
    if (FUNC15())
        FUNC20(&stream, "SSE4.2 ");
    if (FUNC13())
        FUNC20(&stream, "SSE4A ");
    if (FUNC5())
        FUNC20(&stream, "AVX ");
    if (FUNC6())
        FUNC20(&stream, "AVX2 ");
    if (FUNC2())
        FUNC20(&stream, "3DNow! ");
    if (FUNC17())
        FUNC20(&stream, "XOP ");
    if (FUNC7())
        FUNC20(&stream, "FMA4 ");

#elif defined (__powerpc__) || defined (__ppc__) || defined (__ppc64__)
    if (vlc_CPU_ALTIVEC())
        vlc_memstream_puts(&stream, "AltiVec");

#elif defined (__arm__)
    if (vlc_CPU_ARM_NEON())
        vlc_memstream_puts(&stream, "ARM_NEON ");

#endif

#if HAVE_FPU
    vlc_memstream_puts(&stream, "FPU ");
#endif

    if (FUNC18(&stream) == 0)
    {
        FUNC1 (obj, "CPU has capabilities %s", stream.ptr);
        FUNC0(stream.ptr);
    }
}