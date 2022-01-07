
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int PUCHAR ;


 int HwDelay () ;
 int ReadResourceData (int ) ;
 int ReadStatus (int ) ;

__attribute__((used)) static
USHORT
PeekByte(PUCHAR ReadDataPort)
{
  USHORT i;

  for (i = 0; i < 20; i++)
  {
    if (ReadStatus(ReadDataPort) & 0x01)
      return ReadResourceData(ReadDataPort);

    HwDelay();
  }

  return 0xFF;
}
