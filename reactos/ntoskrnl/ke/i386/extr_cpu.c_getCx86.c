
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int UCHAR ;
typedef int PUCHAR ;


 int READ_PORT_UCHAR (int ) ;
 int WRITE_PORT_UCHAR (int ,int ) ;

__attribute__((used)) static __inline
UCHAR
getCx86(UCHAR reg)
{
    WRITE_PORT_UCHAR((PUCHAR)(ULONG_PTR)0x22, reg);
    return READ_PORT_UCHAR((PUCHAR)(ULONG_PTR)0x23);
}
