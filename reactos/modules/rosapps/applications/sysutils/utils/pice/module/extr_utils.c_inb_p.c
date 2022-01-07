
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef scalar_t__ PUCHAR ;


 int READ_PORT_UCHAR (scalar_t__) ;

UCHAR inb_p(PUCHAR port)
{
    return READ_PORT_UCHAR((PUCHAR)port);
}
