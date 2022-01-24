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
typedef  int /*<<< orphan*/  cmsMLU ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static
cmsBool FUNC4(cmsMLU* mlu, cmsInt32Number n)
{
    char Buffer[256], Buffer2[256];


    FUNC1(FUNC0(), mlu, "en", "US", Buffer, 255);
    FUNC2(Buffer2, "Hello, world %d", n);
    if (FUNC3(Buffer, Buffer2) != 0) return FALSE;


    FUNC1(FUNC0(), mlu, "es", "ES", Buffer, 255);
    FUNC2(Buffer2, "Hola, mundo %d", n);
    if (FUNC3(Buffer, Buffer2) != 0) return FALSE;

    return TRUE;
}