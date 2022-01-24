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
typedef  void* LPVOID ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void* FUNC5 (LPTSTR name, int type, DWORD* size)
{
    HRSRC rsrc;
    HGLOBAL hdl;
    LPVOID addr;
    
    if (!(rsrc = FUNC0 (NULL, name, FUNC3(type))) ||
        !(*size = FUNC4 (0, rsrc)) ||
        !(hdl = FUNC1 (0, rsrc)) ||
        !(addr = FUNC2 (hdl)))
        return NULL;
    return addr;
}