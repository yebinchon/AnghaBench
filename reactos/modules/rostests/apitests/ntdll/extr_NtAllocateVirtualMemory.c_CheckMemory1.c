
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef size_t SIZE_T ;
typedef scalar_t__* PVOID ;
typedef scalar_t__* PBYTE ;
typedef int BOOLEAN ;


 int ASSERT (int ) ;
 int FALSE ;
 scalar_t__ LOBYTE (size_t) ;
 int TRUE ;
 int trace (char*,scalar_t__*,int ,scalar_t__) ;

__attribute__((used)) static
BOOLEAN
CheckMemory1(
    PVOID UserBuffer,
    SIZE_T DataSize)
{
    PBYTE Buffer = UserBuffer;
    SIZE_T i;

    for (i = 0; i < DataSize; ++i)
        if (Buffer[i] != LOBYTE(i))
        {
            trace("Mismatch in region %p at index %lu. Value=%02x\n", UserBuffer, (ULONG)i, Buffer[i]);
            ASSERT(FALSE);
            return FALSE;
        }
    return TRUE;
}
