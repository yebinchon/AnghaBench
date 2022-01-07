
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t DataInAddr ;
 int * DataInBuffer ;
 int hex2int (int ) ;
 scalar_t__ isxdigit (int ) ;

int PacketReadHexNumber(int dig)
{
    int i;
    int result = 0;
    for (i = 0; i < dig && isxdigit(DataInBuffer[DataInAddr]); i++)
    {
        result <<= 4;
        result |= hex2int(DataInBuffer[DataInAddr++]);
    }
    return result;
}
