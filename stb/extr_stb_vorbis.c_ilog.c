
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;



__attribute__((used)) static int ilog(int32 n)
{
   static signed char log2_4[16] = { 0,1,2,2,3,3,3,3,4,4,4,4,4,4,4,4 };

   if (n < 0) return 0;


   if (n < (1 << 14))
        if (n < (1 << 4)) return 0 + log2_4[n ];
        else if (n < (1 << 9)) return 5 + log2_4[n >> 5];
             else return 10 + log2_4[n >> 10];
   else if (n < (1 << 24))
             if (n < (1 << 19)) return 15 + log2_4[n >> 15];
             else return 20 + log2_4[n >> 20];
        else if (n < (1 << 29)) return 25 + log2_4[n >> 25];
             else return 30 + log2_4[n >> 30];
}
