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

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 char const** TGZsuffix ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char*) ; 

char *FUNC3 (const char *arcname)
{
  static char buffer[1024];
  int origlen,i;

  FUNC1(buffer,arcname);
  origlen = FUNC2(buffer);

  for (i=0; TGZsuffix[i]; i++)
    {
       FUNC1(buffer+origlen,TGZsuffix[i]);
       if (FUNC0(buffer,F_OK) == 0)
         return buffer;
    }
  return NULL;
}