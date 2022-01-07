
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int PUCHAR ;
typedef int CHAR ;


 int KdPortGetByteEx (int *,int ) ;
 int SerialPortInfo ;

CHAR
KdbpTryGetCharSerial(ULONG Retry)
{
    CHAR Result = -1;

    if (Retry == 0)
        while (!KdPortGetByteEx(&SerialPortInfo, (PUCHAR)&Result));
    else
        while (!KdPortGetByteEx(&SerialPortInfo, (PUCHAR)&Result) && Retry-- > 0);

    return Result;
}
