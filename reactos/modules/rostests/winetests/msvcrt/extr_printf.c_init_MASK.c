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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* p__ecvt_s ; 
 void* p__fcvt_s ; 
 void* p__get_output_format ; 
 void* p__set_output_format ; 
 void* p__vscprintf ; 
 void* p__vscwprintf ; 
 void* p__vsnwprintf_s ; 
 void* p__vsprintf_p ; 
 void* p__vswprintf ; 
 void* p__vswprintf_c ; 
 void* p__vswprintf_c_l ; 
 void* p__vswprintf_l ; 
 void* p__vswprintf_p_l ; 
 void* p_sprintf ; 
 void* p_vswprintf ; 

__attribute__((used)) static void FUNC2( void )
{
    HMODULE hmod = FUNC0("msvcrt.dll");

    p_sprintf = (void *)FUNC1(hmod, "sprintf");
    p__vscprintf = (void *)FUNC1(hmod, "_vscprintf");
    p__vscwprintf = (void *)FUNC1(hmod, "_vscwprintf");
    p__vsnwprintf_s = (void *)FUNC1(hmod, "_vsnwprintf_s");
    p__ecvt_s = (void *)FUNC1(hmod, "_ecvt_s");
    p__fcvt_s = (void *)FUNC1(hmod, "_fcvt_s");
    p__get_output_format = (void *)FUNC1(hmod, "_get_output_format");
    p__set_output_format = (void *)FUNC1(hmod, "_set_output_format");
    p__vsprintf_p = (void*)FUNC1(hmod, "_vsprintf_p");
    p_vswprintf = (void*)FUNC1(hmod, "vswprintf");
    p__vswprintf = (void*)FUNC1(hmod, "_vswprintf");
    p__vswprintf_l = (void*)FUNC1(hmod, "_vswprintf_l");
    p__vswprintf_c = (void*)FUNC1(hmod, "_vswprintf_c");
    p__vswprintf_c_l = (void*)FUNC1(hmod, "_vswprintf_c_l");
    p__vswprintf_p_l = (void*)FUNC1(hmod, "_vswprintf_p_l");
}