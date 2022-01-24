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
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(FILE *f, FILE *g)
{
   char buf1[1024],buf2[1024];
   int n1,n2, res=0;

   while (1) {
      n1 = (int) FUNC1(buf1, 1, sizeof(buf1), f);
      n2 = (int) FUNC1(buf2, 1, sizeof(buf2), g);
      res = FUNC2(buf1,buf2,FUNC3(n1,n2));
      if (res)
         break;
      if (n1 != n2) {
         res = n1 < n2 ? -1 : 1;
         break;
      }
      if (n1 == 0)
         break;
   }

   FUNC0(f);
   FUNC0(g);
   return res;
}