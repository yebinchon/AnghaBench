#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {TYPE_1__ dmPosition; int /*<<< orphan*/  dmDisplayFixedOutput; int /*<<< orphan*/  dmDisplayOrientation; int /*<<< orphan*/  dmPanningHeight; int /*<<< orphan*/  dmPanningWidth; int /*<<< orphan*/  dmDisplayFrequency; int /*<<< orphan*/  dmDisplayFlags; int /*<<< orphan*/  dmPelsHeight; int /*<<< orphan*/  dmPelsWidth; int /*<<< orphan*/  dmBitsPerPel; } ;
typedef  TYPE_2__* PDEVMODEW ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

VOID
FUNC1(HKEY hkey, PDEVMODEW pdm)
{
    FUNC0(hkey, L"DefaultSettings.BitsPerPel", pdm->dmBitsPerPel);
    FUNC0(hkey, L"DefaultSettings.XResolution", pdm->dmPelsWidth);
    FUNC0(hkey, L"DefaultSettings.YResolution", pdm->dmPelsHeight);
    FUNC0(hkey, L"DefaultSettings.Flags", pdm->dmDisplayFlags);
    FUNC0(hkey, L"DefaultSettings.VRefresh", pdm->dmDisplayFrequency);
    FUNC0(hkey, L"DefaultSettings.XPanning", pdm->dmPanningWidth);
    FUNC0(hkey, L"DefaultSettings.YPanning", pdm->dmPanningHeight);
    FUNC0(hkey, L"DefaultSettings.Orientation", pdm->dmDisplayOrientation);
    FUNC0(hkey, L"DefaultSettings.FixedOutput", pdm->dmDisplayFixedOutput);
    FUNC0(hkey, L"Attach.RelativeX", pdm->dmPosition.x);
    FUNC0(hkey, L"Attach.RelativeY", pdm->dmPosition.y);
//    RegWriteDWORD(hkey, L"Attach.ToDesktop, pdm->dmBitsPerPel", pdm->);
}