#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pPrinterName; int /*<<< orphan*/  pDriverName; } ;
typedef  TYPE_1__ PRINTER_INFO_2A ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  PRINTER_ENUM_LOCAL ; 

__attribute__((used)) static HDC FUNC5(void)
{
    PRINTER_INFO_2A *info;
    DWORD info_size, num_printers=0;
    BOOL ret;
    HDC result=NULL;

    FUNC1(PRINTER_ENUM_LOCAL, NULL, 2, NULL, 0, &info_size, &num_printers);

    if (info_size == 0)
        return NULL;

    info = FUNC3(FUNC2(), 0, info_size);

    ret = FUNC1(PRINTER_ENUM_LOCAL, NULL, 2, (LPBYTE)info, info_size, &info_size, &num_printers);

    if (ret)
        result = FUNC0(info->pDriverName, info->pPrinterName, NULL, NULL);

    FUNC4(FUNC2(), 0, info);

    return result;
}