
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int stb_log2_floor(size_t n)
{
   static signed char log2_4[16] = { -1,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3 };







   if (n < (1U << 14))
        if (n < (1U << 4)) return 0 + log2_4[n ];
        else if (n < (1U << 9)) return 5 + log2_4[n >> 5];
             else return 10 + log2_4[n >> 10];
   else if (n < (1U << 24))
             if (n < (1U << 19)) return 15 + log2_4[n >> 15];
             else return 20 + log2_4[n >> 20];
        else if (n < (1U << 29)) return 25 + log2_4[n >> 25];
             else return 30 + log2_4[n >> 30];
}
