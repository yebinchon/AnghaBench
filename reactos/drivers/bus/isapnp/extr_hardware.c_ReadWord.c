
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int PUCHAR ;


 int ReadByte (int ,int) ;

__attribute__((used)) static
inline
USHORT
ReadWord(PUCHAR ReadDataPort, USHORT Address)
{
  return ((ReadByte(ReadDataPort, Address) << 8) |
          (ReadByte(ReadDataPort, Address + 1)));
}
