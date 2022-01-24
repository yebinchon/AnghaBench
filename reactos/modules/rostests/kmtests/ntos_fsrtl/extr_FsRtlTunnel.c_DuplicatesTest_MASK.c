#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int MaximumLength; scalar_t__ Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  TUNNEL ;
typedef  scalar_t__ PVOID ;
typedef  scalar_t__ PTUNNEL ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,TYPE_1__*,TYPE_1__*,TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 

__attribute__((used)) static
void FUNC15()
{
    UNICODE_STRING ShortName, LongName, OutShort, OutLong, ShortName2, LongName2;
    ULONG First, Second, OutLength, OutData;
    PTUNNEL Tunnel;
    PVOID Buffer;

    First = 1;
    Second = 2;
    FUNC7(&ShortName, L"LONGFI~1.TXT");
    FUNC7(&LongName, L"Longfilename.txt");
    FUNC7(&ShortName2, L"LONGFI~2.TXT");
    FUNC7(&LongName2, L"Longfilenamr.txt");
    Tunnel = FUNC0(NonPagedPool, sizeof(TUNNEL));
    FUNC8(Tunnel, sizeof(TUNNEL));
    OutShort.MaximumLength = 13 * sizeof(WCHAR);
    OutShort.Buffer = FUNC0(PagedPool, OutShort.MaximumLength);
    OutLong.MaximumLength = 17 * sizeof(WCHAR);
    OutLong.Buffer = Buffer = FUNC0(PagedPool, OutLong.MaximumLength);

    FUNC6(Tunnel);
    FUNC2(Tunnel, 1, &ShortName, &LongName, TRUE, sizeof(ULONG), &First);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "First call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 1);
    FUNC12(OutLong.Buffer, Buffer);

    FUNC2(Tunnel, 1, &ShortName, &LongName, TRUE, sizeof(ULONG), &Second);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Second call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 2);
    FUNC12(OutLong.Buffer, Buffer);

    OutLong.MaximumLength = 13 * sizeof(WCHAR);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Third call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 2);
    FUNC9(OutLong.Buffer != Buffer, "Buffer didn't get reallocated!\n");
    FUNC13(OutLong.MaximumLength, 16 * sizeof(WCHAR));

    FUNC3(Tunnel, 1);
    FUNC10(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Fourth call");

    FUNC2(Tunnel, 1, &ShortName, &LongName, TRUE, sizeof(ULONG), &First);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Fifth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 1);

    FUNC2(Tunnel, 1, &ShortName2, &LongName2, TRUE, sizeof(ULONG), &First);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Sixth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 1);
    FUNC11(FUNC5(Tunnel, 1, &ShortName2, &OutShort, &OutLong, &OutLength, &OutData), "Seventh call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 1);

    FUNC2(Tunnel, 1, &ShortName, &LongName, TRUE, sizeof(ULONG), &Second);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Eighth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 2);
    FUNC11(FUNC5(Tunnel, 1, &ShortName2, &OutShort, &OutLong, &OutLength, &OutData), "Ninth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 1);

    FUNC2(Tunnel, 1, &ShortName2, &LongName2, TRUE, sizeof(ULONG), &Second);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Tenth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 2);
    FUNC11(FUNC5(Tunnel, 1, &ShortName2, &OutShort, &OutLong, &OutLength, &OutData), "Eleventh call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 2);

    FUNC3(Tunnel, 1);
    FUNC10(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Twelfth call");
    FUNC10(FUNC5(Tunnel, 1, &ShortName2, &OutShort, &OutLong, &OutLength, &OutData), "Thirteenth call");

    FUNC2(Tunnel, 1, &ShortName, &LongName, TRUE, sizeof(ULONG), &First);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Fourteenth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 1);

    FUNC2(Tunnel, 1, &ShortName, &LongName, TRUE, sizeof(ULONG), &Second);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Fifteenth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 2);

    FUNC2(Tunnel, 1, &ShortName2, &LongName2, TRUE, sizeof(ULONG), &First);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Sixteenth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 2);
    FUNC11(FUNC5(Tunnel, 1, &ShortName2, &OutShort, &OutLong, &OutLength, &OutData), "Seventeenth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 1);

    FUNC2(Tunnel, 1, &ShortName2, &LongName2, TRUE, sizeof(ULONG), &Second);
    FUNC11(FUNC5(Tunnel, 1, &ShortName, &OutShort, &OutLong, &OutLength, &OutData), "Eighteenth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 2);
    FUNC11(FUNC5(Tunnel, 1, &ShortName2, &OutShort, &OutLong, &OutLength, &OutData), "Nineteenth call");
    FUNC14(OutLength, sizeof(ULONG));
    FUNC14(OutData, 2);

    FUNC4(Tunnel);
    FUNC1(OutShort.Buffer);
    FUNC1(OutLong.Buffer);
    FUNC1(Buffer);
    FUNC1(Tunnel);
}