
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_perfect ;


 int assert (int) ;
 int free (unsigned char**) ;
 int memset (unsigned char**,int ,int) ;
 scalar_t__ realloc (unsigned char**,int) ;
 int stb_arr_free (char**) ;
 int stb_arr_len (char**) ;
 int stb_arr_push (char**,char*) ;
 int stb_perfect_create (int *,unsigned int*,int) ;
 int stb_perfect_destroy (int *) ;
 int stb_perfect_hash (int *,int) ;

int stb_ischar(char c, char *set)
{
   static unsigned char bit[8] = { 1,2,4,8,16,32,64,128 };
   static stb_perfect p;
   static unsigned char (*tables)[256];
   static char ** sets = ((void*)0);

   int z = stb_perfect_hash(&p, (int)(size_t) set);
   if (z < 0) {
      int i,k,n,j,f;

      if (set == ((void*)0)) {
         stb_arr_free(sets);
         free(tables);
         tables = ((void*)0);
         stb_perfect_destroy(&p);
         return 0;
      }
      stb_arr_push(sets, set);
      stb_perfect_destroy(&p);
      n = stb_perfect_create(&p, (unsigned int *) (char **) sets, stb_arr_len(sets));
      assert(n != 0);
      k = (n+7) >> 3;
      tables = (unsigned char (*)[256]) realloc(tables, sizeof(*tables) * k);
      memset(tables, 0, sizeof(*tables) * k);
      for (i=0; i < stb_arr_len(sets); ++i) {
          k = stb_perfect_hash(&p, (int)(size_t) sets[i]);
         assert(k >= 0);
         n = k >> 3;
         f = bit[k&7];
         for (j=0; !j || sets[i][j]; ++j) {
            tables[n][(unsigned char) sets[i][j]] |= f;
         }
      }
      z = stb_perfect_hash(&p, (int)(size_t) set);
   }
   return tables[z >> 3][(unsigned char) c] & bit[z & 7];
}
