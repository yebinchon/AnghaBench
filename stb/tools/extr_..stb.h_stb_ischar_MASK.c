#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  stb_perfect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10(char c, char *set)
{
   static unsigned char bit[8] = { 1,2,4,8,16,32,64,128 };
   static stb_perfect p;
   static unsigned char (*tables)[256];
   static char ** sets = NULL;

   int z = FUNC9(&p, (int)(size_t) set);
   if (z < 0) {
      int i,k,n,j,f;
      // special code that means free all existing data
      if (set == NULL) {
         FUNC4(sets);
         FUNC1(tables);
         tables = NULL;
         FUNC8(&p);
         return 0;
      }
      FUNC6(sets, set);
      FUNC8(&p);
      n = FUNC7(&p, (unsigned int *) (char **) sets, FUNC5(sets));
      FUNC0(n != 0);
      k = (n+7) >> 3;
      tables = (unsigned char (*)[256]) FUNC3(tables, sizeof(*tables) * k);
      FUNC2(tables, 0, sizeof(*tables) * k);
      for (i=0; i < FUNC5(sets); ++i) {
          k = FUNC9(&p, (int)(size_t) sets[i]);
         FUNC0(k >= 0);
         n = k >> 3;
         f = bit[k&7];
         for (j=0; !j || sets[i][j]; ++j) {
            tables[n][(unsigned char) sets[i][j]] |= f;
         }
      }
      z = FUNC9(&p, (int)(size_t) set);
   }
   return tables[z >> 3][(unsigned char) c] & bit[z & 7];
}