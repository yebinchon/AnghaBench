
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int _unmarshal_uchar_array(unsigned char **pData,
                                  unsigned int *pLenRemain,
                                  unsigned char *dest,
                                  int count)
{
        if (count <= 0 || (unsigned int)count > *pLenRemain)
        return 0;
    memcpy(dest, (*pData), count);
    *pData += count;
    *pLenRemain -= count;
    return 1;
}
