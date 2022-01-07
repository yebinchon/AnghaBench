
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG_PTR ;
typedef scalar_t__ PUCHAR ;


 int ISAPNP_READPORT ;
 int WriteByte (int ,int) ;

__attribute__((used)) static
inline
VOID
SetReadDataPort(PUCHAR ReadDataPort)
{
  WriteByte(ISAPNP_READPORT, ((ULONG_PTR)ReadDataPort >> 2));
}
