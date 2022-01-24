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
struct string_enumerator {int num_resets; int num_expand; char* last_expand; } ;
typedef  char WCHAR ;
typedef  int LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_CHAR ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(HWND hwnd_edit, void *enumerator)
{
    struct string_enumerator *obj = (struct string_enumerator*)enumerator;
    static WCHAR str1[] = {'t','e','s','t',0};
    static WCHAR str1a[] = {'t','e','s','t','\\',0};
    static WCHAR str2[] = {'t','e','s','t','\\','f','o','o','\\','b','a','r','\\','b','a',0};
    static WCHAR str2a[] = {'t','e','s','t','\\','f','o','o','\\','b','a','r','\\',0};
    static WCHAR str2b[] = {'t','e','s','t','\\','f','o','o','\\','b','a','r','\\','b','a','z','_','b','b','q','\\',0};
    obj->num_resets = 0;

    FUNC5(obj->num_expand == 0, "Expected 0 expansions, got %u\n", obj->num_expand);
    FUNC1(hwnd_edit, WM_SETTEXT, 0, (LPARAM)str1);
    FUNC1(hwnd_edit, EM_SETSEL, FUNC0(str1) - 1, FUNC0(str1) - 1);
    FUNC1(hwnd_edit, WM_CHAR, '\\', 1);
    FUNC3();
    FUNC5(obj->num_expand == 1, "Expected 1 expansion, got %u\n", obj->num_expand);
    FUNC5(FUNC4(obj->last_expand, str1a) == 0, "Expected %s, got %s\n", FUNC6(str1a), FUNC6(obj->last_expand));
    FUNC5(obj->num_resets == 1, "Expected 1 reset, got %u\n", obj->num_resets);
    FUNC1(hwnd_edit, WM_SETTEXT, 0, (LPARAM)str2);
    FUNC1(hwnd_edit, EM_SETSEL, FUNC0(str2) - 1, FUNC0(str2) - 1);
    FUNC1(hwnd_edit, WM_CHAR, 'z', 1);
    FUNC3();
    FUNC5(obj->num_expand == 2, "Expected 2 expansions, got %u\n", obj->num_expand);
    FUNC5(FUNC4(obj->last_expand, str2a) == 0, "Expected %s, got %s\n", FUNC6(str2a), FUNC6(obj->last_expand));
    FUNC5(obj->num_resets == 2, "Expected 2 resets, got %u\n", obj->num_resets);
    FUNC2(hwnd_edit);
    FUNC1(hwnd_edit, WM_CHAR, '_', 1);
    FUNC1(hwnd_edit, WM_CHAR, 'b', 1);
    FUNC2(0);
    FUNC2(hwnd_edit);
    FUNC1(hwnd_edit, WM_CHAR, 'b', 1);
    FUNC1(hwnd_edit, WM_CHAR, 'q', 1);
    FUNC3();
    FUNC5(obj->num_expand == 2, "Expected 2 expansions, got %u\n", obj->num_expand);
    FUNC5(obj->num_resets == 2, "Expected 2 resets, got %u\n", obj->num_resets);
    FUNC1(hwnd_edit, WM_CHAR, '\\', 1);
    FUNC3();
    FUNC5(obj->num_expand == 3, "Expected 3 expansions, got %u\n", obj->num_expand);
    FUNC5(FUNC4(obj->last_expand, str2b) == 0, "Expected %s, got %s\n", FUNC6(str2b), FUNC6(obj->last_expand));
    FUNC5(obj->num_resets == 3, "Expected 3 resets, got %u\n", obj->num_resets);
    FUNC1(hwnd_edit, EM_SETSEL, FUNC0(str1a) - 1, -1);
    FUNC1(hwnd_edit, WM_CHAR, 'x', 1);
    FUNC1(hwnd_edit, WM_CHAR, 'y', 1);
    FUNC3();
    FUNC5(obj->num_expand == 4, "Expected 4 expansions, got %u\n", obj->num_expand);
    FUNC5(FUNC4(obj->last_expand, str1a) == 0, "Expected %s, got %s\n", FUNC6(str1a), FUNC6(obj->last_expand));
    FUNC5(obj->num_resets == 4, "Expected 4 resets, got %u\n", obj->num_resets);
    FUNC1(hwnd_edit, EM_SETSEL, FUNC0(str1) - 1, -1);
    FUNC1(hwnd_edit, WM_CHAR, 'x', 1);
    FUNC3();
    FUNC5(obj->num_expand == 4, "Expected 4 expansions, got %u\n", obj->num_expand);
    FUNC5(obj->num_resets == 5, "Expected 5 resets, got %u\n", obj->num_resets);
}