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
typedef  void* HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  default_printer ; 
 scalar_t__ FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    HANDLE printer = 0;
    BOOL res;

    /* NULL is handled */
    FUNC3(0xdeadbeef);
    res = FUNC0(NULL);
    FUNC5(!res && (FUNC1() == ERROR_INVALID_HANDLE),
        "got %d with %d (expected FALSE with ERROR_INVALID_HANDLE)\n",
        res, FUNC1());

    /* A random value as HANDLE is handled */
    FUNC3(0xdeadbeef);
    res = FUNC0( (void *) -1);
    if (FUNC4(res, FUNC1())) return;
    FUNC5(!res && (FUNC1() == ERROR_INVALID_HANDLE),
        "got %d with %d (expected FALSE with ERROR_INVALID_HANDLE)\n",
         res, FUNC1());


    /* Normal use (The Spooler service is needed) */
    FUNC3(0xdeadbeef);
    res = FUNC2(default_printer, &printer, NULL);
    if (FUNC4(res, FUNC1())) return;
    if (res)
    {
        FUNC3(0xdeadbeef);
        res = FUNC0(printer);
        FUNC5(res, "got %d with %d (expected TRUE)\n", res, FUNC1());


        /* double free is handled */
        FUNC3(0xdeadbeef);
        res = FUNC0(printer);
        FUNC5(!res && (FUNC1() == ERROR_INVALID_HANDLE),
            "got %d with %d (expected FALSE with ERROR_INVALID_HANDLE)\n",
            res, FUNC1());

    }
}