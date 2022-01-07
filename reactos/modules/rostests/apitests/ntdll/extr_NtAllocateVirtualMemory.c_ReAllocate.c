
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SIZE_T ;
typedef scalar_t__ PVOID ;
typedef scalar_t__* PSIZE_T ;


 int ASSERT (int) ;
 scalar_t__ Allocate (scalar_t__) ;
 int Free (scalar_t__) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,int ) ;
 int min (scalar_t__,scalar_t__) ;

__attribute__((used)) static
PVOID
ReAllocate(
    PVOID OldUserBuffer,
    SIZE_T NewDataSize)
{
    PVOID NewUserBuffer;
    SIZE_T OldDataSize;

    OldDataSize = ((PSIZE_T)OldUserBuffer)[-1];
    ASSERT(OldDataSize != 0);

    NewUserBuffer = Allocate(NewDataSize);
    ASSERT(((PSIZE_T)OldUserBuffer)[-1] == OldDataSize);
    RtlCopyMemory(NewUserBuffer, OldUserBuffer, min(OldDataSize, NewDataSize));
    ASSERT(((PSIZE_T)OldUserBuffer)[-1] == OldDataSize);
    Free(OldUserBuffer);
    return NewUserBuffer;
}
