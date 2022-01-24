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
typedef  int /*<<< orphan*/  stbi_uc ;
typedef  int /*<<< orphan*/  stbi ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static stbi_uc *FUNC10(stbi *s,int *px,int *py,int *comp,int req_comp)
{
   stbi_uc *result;
   int i, x,y;

   for (i=0; i<92; ++i)
      FUNC6(s);

   x = FUNC4(s);
   y = FUNC4(s);
   if (FUNC0(s))  return FUNC2("bad file","file too short (pic header)");
   if ((1 << 28) / x < y) return FUNC2("too large", "Image too large to decode");

   FUNC5(s); //skip `ratio'
   FUNC4(s); //skip `fields'
   FUNC4(s); //skip `pad'

   // intermediate buffer is RGBA
   result = (stbi_uc *) FUNC7(x*y*4);
   FUNC8(result, 0xff, x*y*4);

   if (!FUNC9(s,x,y,comp, result)) {
      FUNC3(result);
      result=0;
   }
   *px = x;
   *py = y;
   if (req_comp == 0) req_comp = *comp;
   result=FUNC1(result,4,req_comp,x,y);

   return result;
}