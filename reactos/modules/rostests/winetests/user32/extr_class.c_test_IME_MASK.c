#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_name ;
typedef  int /*<<< orphan*/  mbi ;
struct TYPE_7__ {int /*<<< orphan*/  lpfnWndProc; } ;
typedef  TYPE_1__ WNDCLASSW ;
struct TYPE_8__ {int /*<<< orphan*/  lpfnWndProc; } ;
typedef  TYPE_2__ WNDCLASSA ;
typedef  char WCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  AllocationBase; } ;
typedef  int SIZE_T ;
typedef  TYPE_3__ MEMORY_BASIC_INFORMATION ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 char* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int MAX_PATH ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    static const WCHAR ime_classW[] = {'I','M','E',0};

    char module_name[MAX_PATH], *ptr;
    MEMORY_BASIC_INFORMATION mbi;
    WNDCLASSW wnd_classw;
    WNDCLASSA wnd_class;
    SIZE_T size;
    BOOL ret;

    if (!FUNC5(FUNC4("user32.dll"), "BroadcastSystemMessageExA"))
    {
        FUNC9("BroadcastSystemMessageExA not available, skipping IME class test\n");
        return;
    }

    FUNC8(FUNC4("imm32") != 0, "imm32.dll is not loaded\n");

    ret = FUNC0(NULL, "IME", &wnd_class);
    FUNC8(ret, "GetClassInfo failed: %d\n", FUNC2());

    size = FUNC6(wnd_class.lpfnWndProc, &mbi, sizeof(mbi));
    FUNC8(size == sizeof(mbi), "VirtualQuery returned %ld\n", size);
    if (size == sizeof(mbi)) {
        size = FUNC3(mbi.AllocationBase, module_name, sizeof(module_name));
        FUNC8(size, "GetModuleFileName failed\n");
        for (ptr = module_name+size-1; ptr > module_name; ptr--)
            if (*ptr == '\\' || *ptr == '/') break;
        if (*ptr == '\\' || *ptr=='/') ptr++;
        FUNC8(!FUNC7(ptr, "user32.dll") || !FUNC7(ptr, "ntdll.dll"), "IME window proc implemented in %s\n", ptr);
    }

    ret = FUNC1(NULL, ime_classW, &wnd_classw);
    FUNC8(ret, "GetClassInfo failed: %d\n", FUNC2());

    size = FUNC6(wnd_classw.lpfnWndProc, &mbi, sizeof(mbi));
    FUNC8(size == sizeof(mbi), "VirtualQuery returned %ld\n", size);
    size = FUNC3(mbi.AllocationBase, module_name, sizeof(module_name));
    FUNC8(size, "GetModuleFileName failed\n");
    for (ptr = module_name+size-1; ptr > module_name; ptr--)
        if (*ptr == '\\' || *ptr == '/') break;
    if (*ptr == '\\' || *ptr=='/') ptr++;
    FUNC8(!FUNC7(ptr, "user32.dll") || !FUNC7(ptr, "ntdll.dll"), "IME window proc implemented in %s\n", ptr);
}