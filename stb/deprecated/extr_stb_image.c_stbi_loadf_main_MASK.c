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
 float* FUNC0 (char*,char*) ; 
 float* FUNC1 (unsigned char*,int,int,int) ; 
 float* FUNC2 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 

float *FUNC5(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   unsigned char *data;
   #ifndef STBI_NO_HDR
   if (FUNC3(s))
      return FUNC2(s,x,y,comp,req_comp);
   #endif
   data = FUNC4(s, x, y, comp, req_comp);
   if (data)
      return FUNC1(data, *x, *y, req_comp ? req_comp : *comp);
   return FUNC0("unknown image type", "Image not of any known type, or corrupt");
}