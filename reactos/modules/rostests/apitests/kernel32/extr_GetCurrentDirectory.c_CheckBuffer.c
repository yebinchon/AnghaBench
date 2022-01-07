
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VOID ;
typedef int ULONG ;
typedef scalar_t__ const UCHAR ;
typedef size_t SIZE_T ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int trace (char*,scalar_t__ const,scalar_t__ const,int ) ;

__attribute__((used)) static
BOOLEAN
CheckBuffer(
    const VOID *Buffer,
    SIZE_T Size,
    UCHAR Value)
{
    const UCHAR *Array = Buffer;
    SIZE_T i;

    for (i = 0; i < Size; i++)
        if (Array[i] != Value)
        {
            trace("Expected %x, found %x at offset %lu\n", Value, Array[i], (ULONG)i);
            return FALSE;
        }
    return TRUE;
}
