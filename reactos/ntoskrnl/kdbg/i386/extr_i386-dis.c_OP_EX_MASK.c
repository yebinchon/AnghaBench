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
 int /*<<< orphan*/  MODRM_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int REX_EXTZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  codep ; 
 scalar_t__ intel_syntax ; 
 int mod ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int rex ; 
 int rm ; 
 scalar_t__ scratchbuf ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 

__attribute__((used)) static void
FUNC4 (int bytemode, int sizeflag)
{
  int add = 0;
  if (mod != 3)
    {
      FUNC0 (bytemode, sizeflag);
      return;
    }
  FUNC1 (REX_EXTZ);
  if (rex & REX_EXTZ)
    add = 8;

  /* Skip mod/rm byte.  */
  MODRM_CHECK;
  codep++;
  FUNC3 (scratchbuf, "%%xmm%d", rm + add);
  FUNC2 (scratchbuf + intel_syntax);
}