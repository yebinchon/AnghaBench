
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int PUCHAR ;


 int READ_PORT_UCHAR (int ) ;
 int WRITE_PORT_UCHAR (int ,int) ;

VOID Disable8259AIrq(ULONG irq)
{
    UCHAR tmp;

    if (irq >= 8)
    {
       tmp = READ_PORT_UCHAR((PUCHAR)0xA1);
       tmp |= (1 << (irq - 8));
       WRITE_PORT_UCHAR((PUCHAR)0xA1, tmp);
    }
    else
    {
       tmp = READ_PORT_UCHAR((PUCHAR)0x21);
       tmp |= (1 << irq);
       WRITE_PORT_UCHAR((PUCHAR)0x21, tmp);
    }
}
