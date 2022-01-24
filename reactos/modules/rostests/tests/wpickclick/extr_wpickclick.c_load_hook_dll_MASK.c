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
typedef  int /*<<< orphan*/  dllpath ;
typedef  int /*<<< orphan*/ * HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static HINSTANCE FUNC4()
{
    HINSTANCE hinstDll;
    char dllpath[MAX_PATH];
    char* p;

    hinstDll=FUNC1("hook.dll");
    if (hinstDll != NULL)
        return hinstDll;

    if (!FUNC0(NULL,dllpath,sizeof(dllpath)))
        return NULL;

    p=FUNC3(dllpath,'\\');
    if (!p)
        return NULL;
    *p='\0';
    p=FUNC3(dllpath,'\\');
    if (!p)
        return NULL;
    *p='\0';
    FUNC2(dllpath,"\\hookdll\\hook.dll");
    hinstDll=FUNC1(dllpath);
    return hinstDll;
}