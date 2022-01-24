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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  TUNNEL ;
typedef  int SIZE_T ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PagedPool ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * T ; 
 int /*<<< orphan*/ * Tb ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

void FUNC5()
{
    SIZE_T eq;
    T = FUNC0(PagedPool, sizeof(TUNNEL));
    FUNC4(T != NULL, "PTUNEL is NULL after allocated memory\n");
    Tb = FUNC0(PagedPool, sizeof(TUNNEL));
    FUNC4(Tb != NULL, "PTUNEL is NULL after allocated memory\n");

    FUNC3((void*)T, 0, sizeof(TUNNEL));
    FUNC3((void*)Tb, 0, sizeof(TUNNEL));

    FUNC1(T);

    eq = FUNC2((const VOID*)T, (const VOID*)Tb,  sizeof(TUNNEL));

    FUNC4 ( eq != sizeof(TUNNEL), "FsRtlInitializeTunnelCache function did not change anything in the memory at the address PTUNEL.\n"); 
}