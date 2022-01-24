#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int random_seed; int /*<<< orphan*/  mbcinfo; int /*<<< orphan*/  locinfo; int /*<<< orphan*/  handle; int /*<<< orphan*/  tid; } ;
typedef  TYPE_1__ thread_data_t ;
struct TYPE_8__ {int /*<<< orphan*/  mbcinfo; int /*<<< orphan*/  locinfo; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 TYPE_5__* MSVCRT_locale ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  _RT_THREAD ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msvcrt_tls_index ; 

thread_data_t *FUNC8(void)
{
    thread_data_t *ptr;
    DWORD err = FUNC1();  /* need to preserve last error */

    if (!(ptr = FUNC5( msvcrt_tls_index )))
    {
        if (!(ptr = FUNC3( FUNC2(), HEAP_ZERO_MEMORY, sizeof(*ptr) )))
            FUNC7( _RT_THREAD );
        if (!FUNC6( msvcrt_tls_index, ptr )) FUNC7( _RT_THREAD );
        ptr->tid = FUNC0();
        ptr->handle = INVALID_HANDLE_VALUE;
        ptr->random_seed = 1;
        ptr->locinfo = MSVCRT_locale->locinfo;
        ptr->mbcinfo = MSVCRT_locale->mbcinfo;
    }
    FUNC4( err );
    return ptr;
}