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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int GDI_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char,char,unsigned char,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static VOID *FUNC4(HDC hdc)
{
    VOID* GSUB_Table = NULL;
    int length = FUNC0(hdc, FUNC1('G', 'S', 'U', 'B'), 0, NULL, 0);
    if (length != GDI_ERROR)
    {
        GSUB_Table = FUNC3(length);
        FUNC0(hdc, FUNC1('G', 'S', 'U', 'B'), 0, GSUB_Table, length);
        FUNC2("Loaded GSUB table of %i bytes\n",length);
    }
    return GSUB_Table;
}