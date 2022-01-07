
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UCHAR ;


 int GdbPortInfo ;
 int KdPortPutByteEx (int *,int ) ;

VOID
GdbPutChar(UCHAR Value)
{
    KdPortPutByteEx(&GdbPortInfo, Value);
}
