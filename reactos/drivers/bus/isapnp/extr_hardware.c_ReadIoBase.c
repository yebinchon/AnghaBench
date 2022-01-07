
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int PUCHAR ;


 int ISAPNP_IOBASE (int ) ;
 int ReadWord (int ,int ) ;

__attribute__((used)) static
inline
USHORT
ReadIoBase(PUCHAR ReadDataPort, USHORT Index)
{
  return ReadWord(ReadDataPort, ISAPNP_IOBASE(Index));
}
