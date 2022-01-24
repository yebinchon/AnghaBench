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
 int TAG_IMPLEMENTED ; 
 int TAG_UNIMPLEMENTED ; 
 int TAG_UNKNOWN ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static int
FUNC1(char *tag)
{
  if (FUNC0(tag, "implemented") == 0)
    {
      return TAG_IMPLEMENTED;
    }
  if (FUNC0(tag, "unimplemented") == 0)
    {
      return TAG_UNIMPLEMENTED;
    }
  return TAG_UNKNOWN;
}