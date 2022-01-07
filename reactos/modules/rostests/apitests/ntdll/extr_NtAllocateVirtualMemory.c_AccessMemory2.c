
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t SIZE_T ;
typedef scalar_t__* PVOID ;
typedef scalar_t__* PBYTE ;


 scalar_t__ LOBYTE (size_t) ;
 scalar_t__ UCHAR_MAX ;

__attribute__((used)) static
VOID
AccessMemory2(
    PVOID UserBuffer,
    SIZE_T DataSize)
{
    PBYTE Buffer = UserBuffer;
    SIZE_T i;

    for (i = 0; i < DataSize; ++i)
        Buffer[i] = UCHAR_MAX - LOBYTE(i);
}
