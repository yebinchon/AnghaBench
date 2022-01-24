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
typedef  int stbi__uint8 ;
typedef  int /*<<< orphan*/  stbi ;

/* Variables and functions */
 int FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(stbi *s)
{
   static stbi__uint8 png_sig[8] = { 137,80,78,71,13,10,26,10 };
   int i;
   for (i=0; i < 8; ++i)
      if (FUNC1(s) != png_sig[i]) return FUNC0("bad png sig","Not a PNG");
   return 1;
}