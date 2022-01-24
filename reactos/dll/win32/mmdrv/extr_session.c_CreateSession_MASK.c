#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  device_id; int /*<<< orphan*/  device_type; } ;
typedef  TYPE_1__ SessionInfo ;
typedef  int /*<<< orphan*/  MMRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DeviceType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MMSYSERR_ALLOCATED ; 
 int /*<<< orphan*/  MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  MMSYSERR_NOMEM ; 
 TYPE_1__* session_list ; 
 int /*<<< orphan*/  session_lock ; 

MMRESULT
FUNC7(
    DeviceType device_type,
    UINT device_id,
    SessionInfo** session_info)
{
    HANDLE heap = FUNC3();

    FUNC0(session_info);

    FUNC2(&session_lock);

    /* Ensure we're not creating a duplicate session */

    if ( FUNC4(device_type, device_id) )
    {
        FUNC1("Already allocated session\n");
        FUNC6(&session_lock);
        return MMSYSERR_ALLOCATED;
    }

    *session_info = FUNC5(heap, HEAP_ZERO_MEMORY, sizeof(SessionInfo));

    if ( ! *session_info )
    {
        FUNC1("Failed to allocate mem for session info\n");
        FUNC6(&session_lock);
        return MMSYSERR_NOMEM;
    }

    (*session_info)->device_type = device_type;
    (*session_info)->device_id = device_id;

    /* Add to the list */

    (*session_info)->next = session_list;
    session_list = *session_info;

    FUNC6(&session_lock);

    return MMSYSERR_NOERROR;
}