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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (char*,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
    BOOL ret;
    void *ptr = (void *)0xdeadbeef;
    char stackval;

    ret = FUNC0(NULL, 0);
    FUNC1(ret == FALSE, "Expected IsBadWritePtr to return FALSE, got %d\n", ret);

    ret = FUNC0(NULL, 1);
    FUNC1(ret == TRUE, "Expected IsBadWritePtr to return TRUE, got %d\n", ret);

    ret = FUNC0(ptr, 0);
    FUNC1(ret == FALSE, "Expected IsBadWritePtr to return FALSE, got %d\n", ret);

    ret = FUNC0(ptr, 1);
    FUNC1(ret == TRUE, "Expected IsBadWritePtr to return TRUE, got %d\n", ret);

    ret = FUNC0(&stackval, 0);
    FUNC1(ret == FALSE, "Expected IsBadWritePtr to return FALSE, got %d\n", ret);

    ret = FUNC0(&stackval, sizeof(char));
    FUNC1(ret == FALSE, "Expected IsBadWritePtr to return FALSE, got %d\n", ret);
}