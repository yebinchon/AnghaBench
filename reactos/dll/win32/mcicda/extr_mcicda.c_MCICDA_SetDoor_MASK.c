#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ WINE_MCICDAUDIO ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_STORAGE_EJECT_MEDIA ; 
 int /*<<< orphan*/  IOCTL_STORAGE_LOAD_MEDIA ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCIERR_HARDWARE ; 
 int /*<<< orphan*/  MCIERR_INVALID_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD	FUNC3(UINT wDevID, BOOL open)
{
    WINE_MCICDAUDIO*	wmcda = FUNC0(wDevID);
    DWORD               br;

    FUNC1("(%04x, %s) !\n", wDevID, (open) ? "OPEN" : "CLOSE");

    if (wmcda == NULL) return MCIERR_INVALID_DEVICE_ID;

    if (!FUNC2(wmcda->handle,
                         (open) ? IOCTL_STORAGE_EJECT_MEDIA : IOCTL_STORAGE_LOAD_MEDIA,
                         NULL, 0, NULL, 0, &br, NULL))
	return MCIERR_HARDWARE;

    return 0;
}