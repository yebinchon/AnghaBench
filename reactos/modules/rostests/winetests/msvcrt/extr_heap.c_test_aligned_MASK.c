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
typedef  int /*<<< orphan*/ * HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* p_aligned_free ; 
 void* p_aligned_malloc ; 
 void* p_aligned_offset_malloc ; 
 void* p_aligned_offset_realloc ; 
 void* p_aligned_realloc ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 

__attribute__((used)) static void FUNC7(void)
{
    HMODULE msvcrt = FUNC0("msvcrt.dll");

    if (msvcrt == NULL)
        return;

    p_aligned_free = (void*)FUNC1(msvcrt, "_aligned_free");
    p_aligned_malloc = (void*)FUNC1(msvcrt, "_aligned_malloc");
    p_aligned_offset_malloc = (void*)FUNC1(msvcrt, "_aligned_offset_malloc");
    p_aligned_realloc = (void*)FUNC1(msvcrt, "_aligned_realloc");
    p_aligned_offset_realloc = (void*)FUNC1(msvcrt, "_aligned_offset_realloc");

    if (!p_aligned_free || !p_aligned_malloc || !p_aligned_offset_malloc || !p_aligned_realloc || !p_aligned_offset_realloc)
    {
        FUNC2("aligned memory tests skipped\n");
        return;
    }

    FUNC3(256, 0);
    FUNC3(256, 1);
    FUNC3(256, 2);
    FUNC3(256, 3);
    FUNC3(256, 4);
    FUNC3(256, 8);
    FUNC3(256, 16);
    FUNC3(256, 32);
    FUNC3(256, 64);
    FUNC3(256, 127);
    FUNC3(256, 128);

    FUNC4(256, 0, 0);
    FUNC4(256, 1, 0);
    FUNC4(256, 2, 0);
    FUNC4(256, 3, 0);
    FUNC4(256, 4, 0);
    FUNC4(256, 8, 0);
    FUNC4(256, 16, 0);
    FUNC4(256, 32, 0);
    FUNC4(256, 64, 0);
    FUNC4(256, 127, 0);
    FUNC4(256, 128, 0);

    FUNC4(256, 0, 4);
    FUNC4(256, 1, 4);
    FUNC4(256, 2, 4);
    FUNC4(256, 3, 4);
    FUNC4(256, 4, 4);
    FUNC4(256, 8, 4);
    FUNC4(256, 16, 4);
    FUNC4(256, 32, 4);
    FUNC4(256, 64, 4);
    FUNC4(256, 127, 4);
    FUNC4(256, 128, 4);

    FUNC4(256, 8, 7);
    FUNC4(256, 8, 9);
    FUNC4(256, 8, 16);
    FUNC4(256, 8, 17);
    FUNC4(256, 8, 254);
    FUNC4(256, 8, 255);
    FUNC4(256, 8, 256);
    FUNC4(256, 8, 512);

    FUNC6(256, 512, 0);
    FUNC6(256, 128, 0);
    FUNC6(256, 512, 4);
    FUNC6(256, 128, 4);
    FUNC6(256, 512, 8);
    FUNC6(256, 128, 8);
    FUNC6(256, 512, 16);
    FUNC6(256, 128, 16);
    FUNC6(256, 512, 32);
    FUNC6(256, 128, 32);
    FUNC6(256, 512, 64);
    FUNC6(256, 128, 64);

    FUNC5(256, 512, 0, 0);
    FUNC5(256, 128, 0, 0);
    FUNC5(256, 512, 4, 0);
    FUNC5(256, 128, 4, 0);
    FUNC5(256, 512, 8, 0);
    FUNC5(256, 128, 8, 0);
    FUNC5(256, 512, 16, 0);
    FUNC5(256, 128, 16, 0);
    FUNC5(256, 512, 32, 0);
    FUNC5(256, 128, 32, 0);
    FUNC5(256, 512, 64, 0);
    FUNC5(256, 128, 64, 0);

    FUNC5(256, 512, 0, 4);
    FUNC5(256, 128, 0, 4);
    FUNC5(256, 512, 4, 4);
    FUNC5(256, 128, 4, 4);
    FUNC5(256, 512, 8, 4);
    FUNC5(256, 128, 8, 4);
    FUNC5(256, 512, 16, 4);
    FUNC5(256, 128, 16, 4);
    FUNC5(256, 512, 32, 4);
    FUNC5(256, 128, 32, 4);
    FUNC5(256, 512, 64, 4);
    FUNC5(256, 128, 64, 4);

    FUNC5(256, 512, 0, 8);
    FUNC5(256, 128, 0, 8);
    FUNC5(256, 512, 4, 8);
    FUNC5(256, 128, 4, 8);
    FUNC5(256, 512, 8, 8);
    FUNC5(256, 128, 8, 8);
    FUNC5(256, 512, 16, 8);
    FUNC5(256, 128, 16, 8);
    FUNC5(256, 512, 32, 8);
    FUNC5(256, 128, 32, 8);
    FUNC5(256, 512, 64, 8);
    FUNC5(256, 128, 64, 8);

    FUNC5(256, 512, 0, 16);
    FUNC5(256, 128, 0, 16);
    FUNC5(256, 512, 4, 16);
    FUNC5(256, 128, 4, 16);
    FUNC5(256, 512, 8, 16);
    FUNC5(256, 128, 8, 16);
    FUNC5(256, 512, 16, 16);
    FUNC5(256, 128, 16, 16);
    FUNC5(256, 512, 32, 16);
    FUNC5(256, 128, 32, 16);
    FUNC5(256, 512, 64, 16);
    FUNC5(256, 128, 64, 16);

    FUNC5(256, 512, 0, 32);
    FUNC5(256, 128, 0, 32);
    FUNC5(256, 512, 4, 32);
    FUNC5(256, 128, 4, 32);
    FUNC5(256, 512, 8, 32);
    FUNC5(256, 128, 8, 32);
    FUNC5(256, 512, 16, 32);
    FUNC5(256, 128, 16, 32);
    FUNC5(256, 512, 32, 32);
    FUNC5(256, 128, 32, 32);
    FUNC5(256, 512, 64, 32);
    FUNC5(256, 128, 64, 32);

    FUNC5(256, 512, 0, 64);
    FUNC5(256, 128, 0, 64);
    FUNC5(256, 512, 4, 64);
    FUNC5(256, 128, 4, 64);
    FUNC5(256, 512, 8, 64);
    FUNC5(256, 128, 8, 64);
    FUNC5(256, 512, 16, 64);
    FUNC5(256, 128, 16, 64);
    FUNC5(256, 512, 32, 64);
    FUNC5(256, 128, 32, 64);
    FUNC5(256, 512, 64, 64);
    FUNC5(256, 128, 64, 64);

    FUNC5(256, 512, 0, 96);
    FUNC5(256, 128, 0, 96);
    FUNC5(256, 512, 4, 96);
    FUNC5(256, 128, 4, 96);
    FUNC5(256, 512, 8, 96);
    FUNC5(256, 128, 8, 96);
    FUNC5(256, 512, 16, 96);
    FUNC5(256, 128, 16, 96);
    FUNC5(256, 512, 32, 96);
    FUNC5(256, 128, 32, 96);
    FUNC5(256, 512, 64, 96);
    FUNC5(256, 128, 64, 96);

    FUNC5(256, 512, 0, 112);
    FUNC5(256, 128, 0, 112);
    FUNC5(256, 512, 4, 112);
    FUNC5(256, 128, 4, 112);
    FUNC5(256, 512, 8, 112);
    FUNC5(256, 128, 8, 112);
    FUNC5(256, 512, 16, 112);
    FUNC5(256, 128, 16, 112);
    FUNC5(256, 512, 32, 112);
    FUNC5(256, 128, 32, 112);
    FUNC5(256, 512, 64, 112);
    FUNC5(256, 128, 64, 112);
}