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
typedef  scalar_t__ ULONG ;
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/  LARGE_MCB ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long long,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static VOID FUNC7()
{
    LARGE_MCB FirstMcb;
    LONGLONG Lbn, Vbn, SectorCount;
    ULONG Index;
    BOOLEAN Result;

    FUNC0(&FirstMcb, PagedPool);

    Lbn = -1;
    SectorCount = -1;
    Result = FUNC1(&FirstMcb, 8388607LL, &Lbn, &SectorCount, NULL, NULL, NULL);
    FUNC4(Result, "FsRtlLookupLargeMcbEntry returned");
    FUNC5(Lbn, -1);
    FUNC5(SectorCount, -1);

    Vbn = -1;
    Lbn = -1;
    Index = (ULONG) -1;
    Result = FUNC2(&FirstMcb, &Vbn, &Lbn, &Index);
    FUNC4(Result, "FsRtlLookupLastLargeMcbEntryAndIndex returned");
    FUNC5(Vbn, -1);
    FUNC5(Lbn, -1);
    FUNC6(Index, (ULONG) -1);

    FUNC3(&FirstMcb);
}