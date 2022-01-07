
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ PVOID ;
typedef int * PCHAR ;
typedef int CHAR ;


 int ASSERT (int) ;

__attribute__((used)) static CHAR
GspWriteMemSafeGetContent(PVOID Context, ULONG Offset)
{
    ASSERT(0 == Offset);
    return *((PCHAR) Context);
}
