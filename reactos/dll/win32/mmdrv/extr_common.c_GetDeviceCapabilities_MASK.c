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
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ MMRESULT ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DeviceType ;
typedef  scalar_t__ DWORD_PTR ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ IOCTL_MIDI_GET_CAPABILITIES ; 
 scalar_t__ IOCTL_WAVE_GET_CAPABILITIES ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 scalar_t__ MMSYSERR_NOTSUPPORTED ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

DWORD
FUNC10(
    DeviceType device_type,
    UINT device_id,
    DWORD_PTR capabilities,
    DWORD capabilities_size)
{
    MMRESULT result;
    DWORD ioctl;
    HANDLE handle;
    DWORD bytes_returned;
    BOOL device_io_result;

    FUNC0(capabilities);

    /* Choose the right IOCTL for the job */

    if ( FUNC8(device_type) )
        ioctl = IOCTL_WAVE_GET_CAPABILITIES;
    else if ( FUNC7(device_type) )
        ioctl = IOCTL_MIDI_GET_CAPABILITIES;
    else if ( FUNC6(device_type) )
        return MMSYSERR_NOTSUPPORTED; /* TODO */
    else
        return MMSYSERR_NOTSUPPORTED;

    result = FUNC9(device_type,
                              device_id,
                              GENERIC_READ,
                              &handle);

    if ( result != MMSYSERR_NOERROR )
    {
        FUNC2("Failed to open kernel device\n");
        return result;
    }

    device_io_result = FUNC3(handle,
                                       ioctl,
                                       NULL,
                                       0,
                                       (LPVOID) capabilities,
                                       capabilities_size,
                                       &bytes_returned,
                                       NULL);

    /* Translate result */

    if ( device_io_result )
        result = MMSYSERR_NOERROR;
    else
        result = FUNC4(FUNC5());

    /* Clean up and return */

    FUNC1(handle);

    return result;
}