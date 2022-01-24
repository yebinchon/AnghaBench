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
typedef  int UINT ;
typedef  scalar_t__ MSIHANDLE ;
typedef  int INT ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 int MSI_NULL_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int FUNC3 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    MSIHANDLE rec;
    INT val;
    UINT r;

    rec = FUNC1(1);
    FUNC4(rec != 0, "Expected a valid handle\n");

    r = FUNC3(rec, 1, "5");
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    val = FUNC2(rec, 1);
    FUNC4(val == 5, "Expected 5, got %d\n", val);

    r = FUNC3(rec, 1, "-5");
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    val = FUNC2(rec, 1);
    FUNC4(val == -5, "Expected -5, got %d\n", val);

    r = FUNC3(rec, 1, "5apple");
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    val = FUNC2(rec, 1);
    FUNC4(val == MSI_NULL_INTEGER, "Expected MSI_NULL_INTEGER, got %d\n", val);

    FUNC0(rec);
}