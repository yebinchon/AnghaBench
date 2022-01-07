
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_8__ {int * SectionObjectPointer; int * FsContext; } ;
struct TYPE_7__ {int Event; } ;
typedef int PDEVICE_OBJECT ;
typedef int LARGE_INTEGER ;
typedef TYPE_1__ CACHE_UNINITIALIZE_EVENT ;


 scalar_t__ CcIsFileCached (TYPE_2__*) ;
 int CcUninitializeCacheMap (TYPE_2__*,int *,TYPE_1__*) ;
 int ExFreePool (int *) ;
 int Executive ;
 int FALSE ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 int NotificationEvent ;
 int ObDereferenceObject (TYPE_2__*) ;
 int RTL_CONSTANT_LARGE_INTEGER (long long) ;
 int TRUE ;
 int * TestDeviceObject ;
 TYPE_2__* TestFileObject ;
 int TestTestId ;
 int TestUncaching ;
 int ok_eq_pointer (int *,int ) ;
 int ok_eq_ulong (int,int ) ;
 int skip (int ,char*) ;

__attribute__((used)) static
VOID
CleanupTest(
    ULONG TestId,
    PDEVICE_OBJECT DeviceObject)
{
    LARGE_INTEGER Zero = RTL_CONSTANT_LARGE_INTEGER(0LL);
    CACHE_UNINITIALIZE_EVENT CacheUninitEvent;

    ok_eq_pointer(TestDeviceObject, DeviceObject);
    ok_eq_ulong(TestTestId, TestId);

    if (!skip(TestFileObject != ((void*)0), "No test FO\n"))
    {
        if (CcIsFileCached(TestFileObject))
        {
            TestUncaching = TRUE;
            KeInitializeEvent(&CacheUninitEvent.Event, NotificationEvent, FALSE);
            CcUninitializeCacheMap(TestFileObject, &Zero, &CacheUninitEvent);
            KeWaitForSingleObject(&CacheUninitEvent.Event, Executive, KernelMode, FALSE, ((void*)0));
            TestUncaching = FALSE;
        }

        if (TestFileObject->FsContext != ((void*)0))
        {
            ExFreePool(TestFileObject->FsContext);
            TestFileObject->FsContext = ((void*)0);
            TestFileObject->SectionObjectPointer = ((void*)0);
        }

        ObDereferenceObject(TestFileObject);
    }

    TestFileObject = ((void*)0);
    TestDeviceObject = ((void*)0);
    TestTestId = -1;
}
