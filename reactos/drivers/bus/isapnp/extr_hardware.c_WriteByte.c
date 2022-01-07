
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int USHORT ;


 int WriteAddress (int ) ;
 int WriteData (int ) ;

__attribute__((used)) static
inline
VOID
WriteByte(USHORT Address, USHORT Value)
{
  WriteAddress(Address);
  WriteData(Value);
}
