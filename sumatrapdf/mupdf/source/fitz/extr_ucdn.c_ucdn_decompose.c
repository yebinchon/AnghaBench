
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int decode_utf16 (unsigned short const**) ;
 unsigned short* get_decomp_record (int ) ;
 scalar_t__ hangul_pair_decompose (int ,int *,int *) ;

int ucdn_decompose(uint32_t code, uint32_t *a, uint32_t *b)
{
 const unsigned short *rec;
 int len;

 if (hangul_pair_decompose(code, a, b))
  return 1;

 rec = get_decomp_record(code);
 len = rec[0] >> 8;

 if ((rec[0] & 0xff) != 0 || len == 0)
  return 0;

 rec++;
 *a = decode_utf16(&rec);
 if (len > 1)
  *b = decode_utf16(&rec);
 else
  *b = 0;

 return 1;
}
