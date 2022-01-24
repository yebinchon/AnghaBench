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
typedef  int stb_uint ;
typedef  int /*<<< orphan*/  stb_uchar ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ stb__out ; 
 int /*<<< orphan*/  stb__outfile ; 

__attribute__((used)) static void FUNC4(size_t id, stb_uint value)
{
   stb_uchar data[4] = { (stb_uchar)(value >> 24), (stb_uchar)(value >> 16), (stb_uchar)(value >> 8), (stb_uchar)(value) };
   if (stb__out) {
      FUNC3((void *) id, data, 4);
   } else {
      stb_uint where = FUNC1(stb__outfile);
      FUNC0(stb__outfile, (long) id, SEEK_SET);
      FUNC2(data, 4, 1, stb__outfile);
      FUNC0(stb__outfile, where, SEEK_SET);
   }
}