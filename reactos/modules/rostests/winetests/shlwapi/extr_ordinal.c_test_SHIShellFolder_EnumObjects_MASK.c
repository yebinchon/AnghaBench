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
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IEnumIDList ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  ShellFolder ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    IEnumIDList *enm;
    HRESULT hres;
    IShellFolder *folder;

    if(!&pSHIShellFolder_EnumObjects){ /* win7 and later */
        FUNC5("SHIShellFolder_EnumObjects not available\n");
        return;
    }

    if(0){
        /* NULL object crashes on Windows */
        FUNC4(NULL, NULL, 0, NULL);
    }

    /* SHIShellFolder_EnumObjects doesn't QI the object for IShellFolder */
    enm = (IEnumIDList*)0xdeadbeef;
    hres = FUNC4(&ShellFolder, NULL, 0, &enm);
    FUNC3(hres == S_OK, "SHIShellFolder_EnumObjects failed: 0x%08x\n", hres);
    FUNC3(enm == (IEnumIDList*)0xcafebabe, "Didn't get expected enumerator location, instead: %p\n", enm);

    /* SHIShellFolder_EnumObjects isn't strict about the IShellFolder object */
    hres = FUNC2(&folder);
    FUNC3(hres == S_OK, "SHGetDesktopFolder failed: 0x%08x\n", hres);

    enm = NULL;
    hres = FUNC4(folder, NULL, 0, &enm);
    FUNC3(hres == S_OK, "SHIShellFolder_EnumObjects failed: 0x%08x\n", hres);
    FUNC3(enm != NULL, "Didn't get an enumerator\n");
    if(enm)
        FUNC0(enm);

    FUNC1(folder);
}