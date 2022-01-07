
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef scalar_t__ PUCHAR ;


 int WRITE_PORT_UCHAR (scalar_t__,int ) ;

void outportb(PUCHAR port,UCHAR data)
{
    WRITE_PORT_UCHAR((PUCHAR)port, data);
}
