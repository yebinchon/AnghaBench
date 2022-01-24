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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int stb__hashsize ; 
 int stb__running_adler ; 
 int stb__window ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(stb_uchar *input, stb_uint length)
{
   int literals = 0;
   stb_uint len,i;

   stb_uchar **chash;
   chash = (stb_uchar**) FUNC2(stb__hashsize * sizeof(stb_uchar*));
   if (chash == NULL) return 0; // failure
   for (i=0; i < stb__hashsize; ++i)
      chash[i] = NULL;

   // stream signature
   FUNC5(0x57); FUNC5(0xbc);
   FUNC6(0);

   FUNC7(0);       // 64-bit length requires 32-bit leading 0
   FUNC7(length);
   FUNC7(stb__window);

   stb__running_adler = 1;

   len = FUNC4(input, input, input+length, length, &literals, chash, stb__hashsize-1);
   FUNC0(len == length);

   FUNC3(input+length - literals, literals);

   FUNC1(chash);

   FUNC6(0x05fa); // end opcode

   FUNC7(stb__running_adler);

   return 1; // success
}