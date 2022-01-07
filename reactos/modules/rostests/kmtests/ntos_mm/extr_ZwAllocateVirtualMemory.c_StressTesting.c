
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bases ;
typedef size_t ULONG ;
typedef int SIZE_T ;
typedef int * PVOID ;
typedef int NTSTATUS ;


 int CheckBufferReadWrite (int *,int ,int ,int ) ;
 size_t MEM_COMMIT ;
 int MEM_RELEASE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtCurrentProcess () ;
 int PAGE_READWRITE ;
 size_t RTL_NUMBER_OF (int **) ;
 int RtlZeroMemory (int **,int) ;
 int STATUS_ACCESS_VIOLATION ;
 int STATUS_SUCCESS ;
 int TestString ;
 int TestStringSize ;
 int ZwAllocateVirtualMemory (int ,int **,int ,int*,size_t,int ) ;
 int ZwFreeVirtualMemory (int ,int **,int*,int ) ;
 int trace (char*,int ,size_t) ;

__attribute__((used)) static
NTSTATUS
StressTesting(ULONG AllocationType)
{
    NTSTATUS Status = STATUS_SUCCESS;
    NTSTATUS ReturnStatus = STATUS_SUCCESS;
    static PVOID bases[1024];
    ULONG Index = 0;
    PVOID Base = ((void*)0);
    SIZE_T RegionSize = 5 * 1024 * 1024;

    RtlZeroMemory(bases, sizeof(bases));

    for (Index = 0; Index < RTL_NUMBER_OF(bases) && NT_SUCCESS(Status); Index++)
    {
        Status = ZwAllocateVirtualMemory(NtCurrentProcess(), &Base, 0, &RegionSize, AllocationType, PAGE_READWRITE);

        bases[Index] = Base;
        if ((Index % 10) == 0)
        {
            if (AllocationType == MEM_COMMIT && NT_SUCCESS(Status))
            {
                CheckBufferReadWrite(Base, TestString, TestStringSize, STATUS_SUCCESS);
            }
            else
            {
                CheckBufferReadWrite(Base, TestString, TestStringSize, STATUS_ACCESS_VIOLATION);
            }
        }

        Base = ((void*)0);
    }

    trace("Finished reserving. Error code %x. Chunks allocated: %d\n", Status, Index );

    ReturnStatus = Status;


    Status = STATUS_SUCCESS;
    Index = 0;
    while (NT_SUCCESS(Status) && Index < RTL_NUMBER_OF(bases))
    {
        RegionSize = 0;
        Status = ZwFreeVirtualMemory(NtCurrentProcess(), &bases[Index], &RegionSize, MEM_RELEASE);
        bases[Index++] = ((void*)0);
    }

    return ReturnStatus;
}
