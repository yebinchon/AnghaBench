
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int USHORT ;


 int ISAPNP_CARDSELECTNUMBER ;
 int WriteByte (int ,int ) ;

__attribute__((used)) static
inline
VOID
WriteCsn(USHORT Csn)
{
  WriteByte(ISAPNP_CARDSELECTNUMBER, Csn);
}
