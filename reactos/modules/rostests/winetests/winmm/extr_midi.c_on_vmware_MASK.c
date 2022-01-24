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
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_ENUMERATE_SUB_KEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char* const*) ; 

__attribute__((used)) static BOOL FUNC3(void)
{
    static const LPCSTR sub_keys[] = { "Scsi Port ", "Scsi Bus ", "Target Id ", "Logical Unit Id ", NULL };
    HKEY scsi;
    BOOL found_vmware = FALSE;

    if (FUNC1(HKEY_LOCAL_MACHINE, "HARDWARE\\DEVICEMAP\\Scsi", 0, KEY_ENUMERATE_SUB_KEYS, &scsi) != ERROR_SUCCESS)
        return FALSE;

    found_vmware = FUNC2(scsi, sub_keys);

    FUNC0(scsi);

    return found_vmware;
}