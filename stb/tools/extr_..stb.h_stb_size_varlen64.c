
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint64 ;


 int STB_IMM_UINT64 (int) ;

int stb_size_varlen64(stb_uint64 v)
{
   if (v < 0x00000080) return 1;
   if (v < 0x00004000) return 2;
   if (v < 0x00200000) return 3;
   if (v < 0x10000000) return 4;
   if (v < STB_IMM_UINT64(0x0000000800000000)) return 5;
   if (v < STB_IMM_UINT64(0x0000040000000000)) return 6;
   if (v < STB_IMM_UINT64(0x0002000000000000)) return 7;
   if (v < STB_IMM_UINT64(0x0100000000000000)) return 8;
   return 9;
}
