
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UCHAR ;
typedef int PUCHAR ;


 int ReadData (int ) ;
 int WriteAddress (int ) ;

__attribute__((used)) static
inline
UCHAR
ReadByte(PUCHAR ReadDataPort, USHORT Address)
{
  WriteAddress(Address);
  return ReadData(ReadDataPort);
}
