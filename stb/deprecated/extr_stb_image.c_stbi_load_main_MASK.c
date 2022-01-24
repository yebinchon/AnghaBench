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
 unsigned char* FUNC0 (char*,char*) ; 
 unsigned char* FUNC1 (float*,int,int,int) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 float* FUNC6 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC12 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC14 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC16 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned char *FUNC18(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   if (FUNC9(s)) return FUNC8(s,x,y,comp,req_comp);
   if (FUNC13(s))  return FUNC12(s,x,y,comp,req_comp);
   if (FUNC3(s))  return FUNC2(s,x,y,comp,req_comp);
   if (FUNC5(s))  return FUNC4(s,x,y,comp,req_comp);
   if (FUNC15(s))  return FUNC14(s,x,y,comp,req_comp);
   if (FUNC11(s))  return FUNC10(s,x,y,comp,req_comp);

   #ifndef STBI_NO_HDR
   if (FUNC7(s)) {
      float *hdr = FUNC6(s, x,y,comp,req_comp);
      return FUNC1(hdr, *x, *y, req_comp ? req_comp : *comp);
   }
   #endif

   // test tga last because it's a crappy test!
   if (FUNC17(s))
      return FUNC16(s,x,y,comp,req_comp);
   return FUNC0("unknown image type", "Image not of any known type, or corrupt");
}