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
typedef  int /*<<< orphan*/  stbi ;

/* Variables and functions */
 int FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*,int*,int*) ; 

__attribute__((used)) static int FUNC9(stbi *s, int *x, int *y, int *comp)
{
   if (FUNC4(s, x, y, comp))
       return 1;
   if (FUNC6(s, x, y, comp))
       return 1;
   if (FUNC2(s, x, y, comp))
       return 1;
   if (FUNC1(s, x, y, comp))
       return 1;
   if (FUNC7(s, x, y, comp))
       return 1;
   if (FUNC5(s, x, y, comp))
       return 1;
   #ifndef STBI_NO_HDR
   if (FUNC3(s, x, y, comp))
       return 1;
   #endif
   // test tga last because it's a crappy test!
   if (FUNC8(s, x, y, comp))
       return 1;
   return FUNC0("unknown image type", "Image not of any known type, or corrupt");
}