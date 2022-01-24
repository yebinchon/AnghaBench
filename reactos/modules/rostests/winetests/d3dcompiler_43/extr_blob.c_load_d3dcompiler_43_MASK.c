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
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* pD3DCreateBlob ; 
 void* pD3DGetBlobPart ; 
 void* pD3DStripShader ; 

__attribute__((used)) static BOOL FUNC2(void)
{
    HMODULE module;

    if (!(module = FUNC1("d3dcompiler_43.dll"))) return FALSE;

    pD3DCreateBlob = (void*)FUNC0(module, "D3DCreateBlob");
    pD3DGetBlobPart = (void*)FUNC0(module, "D3DGetBlobPart");
    pD3DStripShader = (void*)FUNC0(module, "D3DStripShader");
    return TRUE;
}