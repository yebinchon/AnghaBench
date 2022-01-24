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
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  PAGE_EXECUTE ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* data ; 
 int /*<<< orphan*/  FUNC2 (char*,int (*) (int)) ; 
 int /*<<< orphan*/  FUNC3 (void*,int (*) (int),int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int) ; 

int FUNC6(void)
{
    unsigned char stack[100];
    void* heap;
    ULONG protection;

    FUNC4("NoExecute\n");

    FUNC2("Executing within the code segment", test);
    FUNC3(data, test, 100);
    FUNC2("Executing within the data segment", (int(*)(int))data);
    FUNC3(stack, test, 100);
    FUNC2("Executing on stack segment", (int(*)(int))stack);
    heap = FUNC0(NULL, 100, MEM_COMMIT, PAGE_READWRITE);
    FUNC3(heap, test, 100);
    FUNC2("Executing on the heap with protection PAGE_READWRITE", (int(*)(int))heap);
    FUNC1(heap, 100, PAGE_EXECUTE, &protection);
    FUNC2("Executing on the heap with protection PAGE_EXECUTE", (int(*)(int))heap);

    return 0;
}