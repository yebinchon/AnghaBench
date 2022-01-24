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
typedef  int /*<<< orphan*/  stbi_io_callbacks ;
typedef  int /*<<< orphan*/  stbi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

extern int      FUNC2(stbi_io_callbacks const *clbk, void *user)
{
   #ifndef STBI_NO_HDR
   stbi s;
   FUNC0(&s, (stbi_io_callbacks *) clbk, user);
   return FUNC1(&s);
   #else
   return 0;
   #endif
}