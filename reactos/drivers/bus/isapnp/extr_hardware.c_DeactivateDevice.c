
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int USHORT ;


 int ISAPNP_ACTIVATE ;
 int WriteByte (int ,int ) ;
 int WriteLogicalDeviceNumber (int ) ;

__attribute__((used)) static
inline
VOID
DeactivateDevice(USHORT LogDev)
{
  WriteLogicalDeviceNumber(LogDev);
  WriteByte(ISAPNP_ACTIVATE, 0);
}
