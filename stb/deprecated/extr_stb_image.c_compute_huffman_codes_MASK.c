#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zhuffman ;
struct TYPE_5__ {int /*<<< orphan*/  z_distance; int /*<<< orphan*/  z_length; } ;
typedef  TYPE_1__ zbuf ;
typedef  int stbi__uint8 ;
typedef  int /*<<< orphan*/  codelength_sizes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(zbuf *a)
{
   static stbi__uint8 length_dezigzag[19] = { 16,17,18,0,8,7,9,6,10,5,11,4,12,3,13,2,14,1,15 };
   zhuffman z_codelength;
   stbi__uint8 lencodes[286+32+137];//padding for maximum single op
   stbi__uint8 codelength_sizes[19];
   int i,n;

   int hlit  = FUNC5(a,5) + 257;
   int hdist = FUNC5(a,5) + 1;
   int hclen = FUNC5(a,4) + 4;

   FUNC2(codelength_sizes, 0, sizeof(codelength_sizes));
   for (i=0; i < hclen; ++i) {
      int s = FUNC5(a,3);
      codelength_sizes[length_dezigzag[i]] = (stbi__uint8) s;
   }
   if (!FUNC3(&z_codelength, codelength_sizes, 19)) return 0;

   n = 0;
   while (n < hlit + hdist) {
      int c = FUNC4(a, &z_codelength);
      FUNC0(c >= 0 && c < 19);
      if (c < 16)
         lencodes[n++] = (stbi__uint8) c;
      else if (c == 16) {
         c = FUNC5(a,2)+3;
         FUNC2(lencodes+n, lencodes[n-1], c);
         n += c;
      } else if (c == 17) {
         c = FUNC5(a,3)+3;
         FUNC2(lencodes+n, 0, c);
         n += c;
      } else {
         FUNC0(c == 18);
         c = FUNC5(a,7)+11;
         FUNC2(lencodes+n, 0, c);
         n += c;
      }
   }
   if (n != hlit+hdist) return FUNC1("bad codelengths","Corrupt PNG");
   if (!FUNC3(&a->z_length, lencodes, hlit)) return 0;
   if (!FUNC3(&a->z_distance, lencodes+hlit, hdist)) return 0;
   return 1;
}