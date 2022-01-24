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
typedef  int /*<<< orphan*/  stbi_uc ;
typedef  int /*<<< orphan*/  stbi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(stbi_uc const *buffer, int len)
{
   #ifndef STBI_NO_HDR
   stbi s;
   FUNC1(&s,buffer,len);
   return FUNC2(&s);
   #else
   STBI_NOTUSED(buffer);
   STBI_NOTUSED(len);
   return 0;
   #endif
}