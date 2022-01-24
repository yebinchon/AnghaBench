#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kernel_device_handle; } ;
typedef  TYPE_1__ SessionInfo ;
typedef  scalar_t__ MMRESULT ;
typedef  scalar_t__ DWORD_PTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  WODM_CLOSE ; 

DWORD
FUNC4(
    DWORD_PTR private_handle)
{
    MMRESULT result;
    SessionInfo* session_info = (SessionInfo*) private_handle;
    /* TODO: Maybe this is best off inside the playback thread? */

    FUNC0(session_info);

    result = FUNC1(session_info, WODM_CLOSE, 0);

    if ( result == MMSYSERR_NOERROR )
    {
        /* TODO: Wait for it to be safe to terminate */

        FUNC2(session_info->kernel_device_handle);

        FUNC3(session_info);
    }

    return result;
}