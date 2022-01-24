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
 char FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(stbi *s)
{
   int sz;
   if (FUNC0(s) != 'G' || FUNC0(s) != 'I' || FUNC0(s) != 'F' || FUNC0(s) != '8') return 0;
   sz = FUNC0(s);
   if (sz != '9' && sz != '7') return 0;
   if (FUNC0(s) != 'a') return 0;
   return 1;
}