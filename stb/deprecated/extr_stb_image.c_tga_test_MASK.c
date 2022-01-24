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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(stbi *s)
{
   int sz;
   FUNC2(s);      //   discard Offset
   sz = FUNC2(s);   //   color type
   if ( sz > 1 ) return 0;   //   only RGB or indexed allowed
   sz = FUNC2(s);   //   image type
   if ( (sz != 1) && (sz != 2) && (sz != 3) && (sz != 9) && (sz != 10) && (sz != 11) ) return 0;   //   only RGB or grey allowed, +/- RLE
   FUNC0(s);      //   discard palette start
   FUNC0(s);      //   discard palette length
   FUNC1(s);         //   discard bits per palette color entry
   FUNC0(s);      //   discard x origin
   FUNC0(s);      //   discard y origin
   if ( FUNC0(s) < 1 ) return 0;      //   test width
   if ( FUNC0(s) < 1 ) return 0;      //   test height
   sz = FUNC1(s);   //   bits per pixel
   if ( (sz != 8) && (sz != 16) && (sz != 24) && (sz != 32) ) return 0;   //   only RGB or RGBA or grey allowed
   return 1;      //   seems to have passed everything
}