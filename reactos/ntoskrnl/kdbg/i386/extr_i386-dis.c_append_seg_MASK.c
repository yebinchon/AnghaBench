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
 int PREFIX_CS ; 
 int PREFIX_DS ; 
 int PREFIX_ES ; 
 int PREFIX_FS ; 
 int PREFIX_GS ; 
 int PREFIX_SS ; 
 size_t intel_syntax ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int prefixes ; 
 int used_prefixes ; 

__attribute__((used)) static void
FUNC1 (void)
{
  if (prefixes & PREFIX_CS)
    {
      used_prefixes |= PREFIX_CS;
      FUNC0 (&"%cs:"[intel_syntax]);
    }
  if (prefixes & PREFIX_DS)
    {
      used_prefixes |= PREFIX_DS;
      FUNC0 (&"%ds:"[intel_syntax]);
    }
  if (prefixes & PREFIX_SS)
    {
      used_prefixes |= PREFIX_SS;
      FUNC0 (&"%ss:"[intel_syntax]);
    }
  if (prefixes & PREFIX_ES)
    {
      used_prefixes |= PREFIX_ES;
      FUNC0 (&"%es:"[intel_syntax]);
    }
  if (prefixes & PREFIX_FS)
    {
      used_prefixes |= PREFIX_FS;
      FUNC0 (&"%fs:"[intel_syntax]);
    }
  if (prefixes & PREFIX_GS)
    {
      used_prefixes |= PREFIX_GS;
      FUNC0 (&"%gs:"[intel_syntax]);
    }
}