
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef int UChar ;



__attribute__((used)) static UInt64 _chm_parse_cword(UChar **pEntry)
{
    UInt64 accum = 0;
    UChar temp;
    while ((temp=*(*pEntry)++) >= 0x80)
    {
        accum <<= 7;
        accum += temp & 0x7f;
    }

    return (accum << 7) + temp;
}
