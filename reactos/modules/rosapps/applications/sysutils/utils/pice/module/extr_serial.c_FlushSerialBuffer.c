
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 scalar_t__ SerialReadByte (int *) ;

void FlushSerialBuffer(void)
{
    UCHAR c;

    while(SerialReadByte(&c));
}
