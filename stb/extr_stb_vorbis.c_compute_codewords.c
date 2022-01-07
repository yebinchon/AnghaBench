
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int available ;
struct TYPE_4__ {scalar_t__ sorted_entries; } ;
typedef TYPE_1__ Codebook ;


 int FALSE ;
 int NO_CODE ;
 int TRUE ;
 int add_entry (TYPE_1__*,int ,int,int ,int,scalar_t__*) ;
 int assert (int) ;
 int bit_reverse (scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static int compute_codewords(Codebook *c, uint8 *len, int n, uint32 *values)
{
   int i,k,m=0;
   uint32 available[32];

   memset(available, 0, sizeof(available));

   for (k=0; k < n; ++k) if (len[k] < NO_CODE) break;
   if (k == n) { assert(c->sorted_entries == 0); return TRUE; }

   add_entry(c, 0, k, m++, len[k], values);

   for (i=1; i <= len[k]; ++i)
      available[i] = 1U << (32-i);




   for (i=k+1; i < n; ++i) {
      uint32 res;
      int z = len[i], y;
      if (z == NO_CODE) continue;






      while (z > 0 && !available[z]) --z;
      if (z == 0) { return FALSE; }
      res = available[z];
      assert(z >= 0 && z < 32);
      available[z] = 0;
      add_entry(c, bit_reverse(res), i, m++, len[i], values);

      if (z != len[i]) {
         assert(len[i] >= 0 && len[i] < 32);
         for (y=len[i]; y > z; --y) {
            assert(available[y] == 0);
            available[y] = res + (1 << (32-y));
         }
      }
   }
   return TRUE;
}
