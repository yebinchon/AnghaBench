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
typedef  int /*<<< orphan*/  SessionInfo ;
typedef  int /*<<< orphan*/  PWAVEHDR ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WODM_WRITE ; 

DWORD
FUNC2(
    DWORD_PTR private_handle,
    PWAVEHDR wave_header,
    DWORD wave_header_size)
{
    SessionInfo* session_info = (SessionInfo*) private_handle;
    FUNC0(session_info);

    /* Let the processing thread know that it has work to do */
    return FUNC1(session_info, WODM_WRITE, wave_header);
}