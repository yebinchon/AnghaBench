#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_8__ {int /*<<< orphan*/ * SectionObjectPointer; int /*<<< orphan*/ * FsContext; } ;
struct TYPE_7__ {int /*<<< orphan*/  Event; } ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  TYPE_1__ CACHE_UNINITIALIZE_EVENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  NotificationEvent ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (long long) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * TestDeviceObject ; 
 TYPE_2__* TestFileObject ; 
 int TestTestId ; 
 int /*<<< orphan*/  TestUncaching ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static
VOID
FUNC10(
    ULONG TestId,
    PDEVICE_OBJECT DeviceObject)
{
    LARGE_INTEGER Zero = FUNC6(0LL);
    CACHE_UNINITIALIZE_EVENT CacheUninitEvent;

    FUNC7(TestDeviceObject, DeviceObject);
    FUNC8(TestTestId, TestId);

    if (!FUNC9(TestFileObject != NULL, "No test FO\n"))
    {
        if (FUNC0(TestFileObject))
        {
            TestUncaching = TRUE;
            FUNC3(&CacheUninitEvent.Event, NotificationEvent, FALSE);
            FUNC1(TestFileObject, &Zero, &CacheUninitEvent);
            FUNC4(&CacheUninitEvent.Event, Executive, KernelMode, FALSE, NULL);
            TestUncaching = FALSE;
        }

        if (TestFileObject->FsContext != NULL)
        {
            FUNC2(TestFileObject->FsContext);
            TestFileObject->FsContext = NULL;
            TestFileObject->SectionObjectPointer = NULL;
        }

        FUNC5(TestFileObject);
    }

    TestFileObject = NULL;
    TestDeviceObject = NULL;
    TestTestId = -1;
}