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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(stbi *s)
{
   int sz;
   if (FUNC2(s) != 'B') return 0;
   if (FUNC2(s) != 'M') return 0;
   FUNC1(s); // discard filesize
   FUNC0(s); // discard reserved
   FUNC0(s); // discard reserved
   FUNC1(s); // discard data offset
   sz = FUNC1(s);
   if (sz == 12 || sz == 40 || sz == 56 || sz == 108) return 1;
   return 0;
}