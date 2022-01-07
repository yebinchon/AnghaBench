
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int decode_utf16 (unsigned short const**) ;
 unsigned short* get_decomp_record (int ) ;

int ucdn_compat_decompose(uint32_t code, uint32_t *decomposed)
{
    int i, len;
    const unsigned short *rec = get_decomp_record(code);
    len = rec[0] >> 8;

    if (len == 0)
        return 0;

    rec++;
    for (i = 0; i < len; i++)
        decomposed[i] = decode_utf16(&rec);

    return len;
}
