
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ***** USHORT ;
typedef int ***** ULONG ;
typedef scalar_t__ PVOID ;
typedef int PUCHAR ;


 int ***** PeekByte (int) ;

__attribute__((used)) static
VOID
Peek(PUCHAR ReadDataPort, PVOID Buffer, ULONG Length)
{
  USHORT i, byte;

  for (i = 0; i < Length; i++)
  {
    byte = PeekByte(ReadDataPort);
    if (Buffer)
       *((PUCHAR)Buffer + i) = byte;
  }
}
