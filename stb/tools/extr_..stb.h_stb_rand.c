
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int STB__MAGIC (unsigned int) ;
 int STB__MT_IA ;
 int STB__MT_IB ;
 int STB__MT_LEN ;
 unsigned int STB__TWIST (unsigned int*,int,int) ;
 unsigned int* stb__mt_buffer ;
 int stb__mt_index ;
 int stb_srand (int ) ;

unsigned int stb_rand()
{
   unsigned int * b = stb__mt_buffer;
   int idx = stb__mt_index;
   unsigned int s,r;
   int i;

   if (idx >= STB__MT_LEN*sizeof(unsigned int)) {
      if (idx > STB__MT_LEN*sizeof(unsigned int))
         stb_srand(0);
      idx = 0;
      i = 0;
      for (; i < STB__MT_IB; i++) {
         s = STB__TWIST(b, i, i+1);
         b[i] = b[i + STB__MT_IA] ^ (s >> 1) ^ STB__MAGIC(s);
      }
      for (; i < STB__MT_LEN-1; i++) {
         s = STB__TWIST(b, i, i+1);
         b[i] = b[i - STB__MT_IB] ^ (s >> 1) ^ STB__MAGIC(s);
      }

      s = STB__TWIST(b, STB__MT_LEN-1, 0);
      b[STB__MT_LEN-1] = b[STB__MT_IA-1] ^ (s >> 1) ^ STB__MAGIC(s);
   }
   stb__mt_index = idx + sizeof(unsigned int);

   r = *(unsigned int *)((unsigned char *)b + idx);

   r ^= (r >> 11);
   r ^= (r << 7) & 0x9D2C5680;
   r ^= (r << 15) & 0xEFC60000;
   r ^= (r >> 18);

   return r;
}
