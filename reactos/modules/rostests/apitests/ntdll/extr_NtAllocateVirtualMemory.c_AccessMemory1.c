
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t SIZE_T ;
typedef int * PVOID ;
typedef int * PBYTE ;


 int LOBYTE (size_t) ;

__attribute__((used)) static
VOID
AccessMemory1(
    PVOID UserBuffer,
    SIZE_T DataSize)
{
    PBYTE Buffer = UserBuffer;
    SIZE_T i;

    for (i = 0; i < DataSize; ++i)
        Buffer[i] = LOBYTE(i);
}
