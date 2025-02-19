
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Int64 ;



__attribute__((used)) static int _unmarshal_int64(unsigned char **pData,
                            unsigned int *pLenRemain,
                            Int64 *dest)
{
    Int64 temp;
    int i;
    if (8 > *pLenRemain)
        return 0;
    temp=0;
    for(i=8; i>0; i--)
    {
        temp <<= 8;
        temp |= (*pData)[i-1];
    }
    *dest = temp;
    *pData += 8;
    *pLenRemain -= 8;
    return 1;
}
