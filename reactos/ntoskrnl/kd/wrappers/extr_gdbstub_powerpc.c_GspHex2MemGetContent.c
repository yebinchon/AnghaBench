
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ PVOID ;
typedef int * PCHAR ;
typedef int CHAR ;


 int HexValue (int ) ;

__attribute__((used)) static CHAR
GspHex2MemGetContent(PVOID Context, ULONG Offset)
{
    return (CHAR)((HexValue(*((PCHAR) Context + 2 * Offset)) << 4) +
                   HexValue(*((PCHAR) Context + 2 * Offset + 1)));
}
