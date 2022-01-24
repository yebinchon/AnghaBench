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
typedef  int /*<<< orphan*/  stb_vorbis ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static int FUNC2(stb_vorbis *f)
{
   int len, right, left, res;
   res = FUNC0(f, &len, &left, &right);
   if (res)
      FUNC1(f, len, left, right);
   return res;
}