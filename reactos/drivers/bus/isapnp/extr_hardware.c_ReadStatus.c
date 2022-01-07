
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int PUCHAR ;


 int ISAPNP_STATUS ;
 int ReadByte (int ,int ) ;

__attribute__((used)) static
inline
USHORT
ReadStatus(PUCHAR ReadDataPort)
{
  return ReadByte(ReadDataPort, ISAPNP_STATUS);
}
