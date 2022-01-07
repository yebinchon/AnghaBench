
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int USHORT ;
typedef int PUCHAR ;


 scalar_t__ ISAPNP_ADDRESS ;
 int WRITE_PORT_UCHAR (int ,int ) ;

__attribute__((used)) static
inline
VOID
WriteAddress(USHORT Address)
{
  WRITE_PORT_UCHAR((PUCHAR)ISAPNP_ADDRESS, Address);
}
