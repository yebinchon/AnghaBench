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
struct dis386 {size_t bytemode1; int /*<<< orphan*/  bytemode2; int /*<<< orphan*/  (* op2 ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* op1 ) (size_t,int) ;int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODRM_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int* codep ; 
 int /*<<< orphan*/ *** fgrps ; 
 int /*<<< orphan*/ ** float_mem ; 
 int /*<<< orphan*/ * float_mem_mode ; 
 struct dis386** float_reg ; 
 int mod ; 
 int /*<<< orphan*/ * names16 ; 
 int /*<<< orphan*/  obufp ; 
 int /*<<< orphan*/  op1out ; 
 int /*<<< orphan*/  op2out ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 unsigned char reg ; 
 size_t rm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5 (int sizeflag)
{
  const struct dis386 *dp;
  unsigned char floatop;

  floatop = codep[-1];

  if (mod != 3)
    {
      int fp_indx = (floatop - 0xd8) * 8 + reg;

      FUNC1 (float_mem[fp_indx], sizeflag);
      obufp = op1out;
      FUNC0 (float_mem_mode[fp_indx], sizeflag);
      return;
    }
  /* Skip mod/rm byte.  */
  MODRM_CHECK;
  codep++;

  dp = &float_reg[floatop - 0xd8][reg];
  if (dp->name == NULL)
    {
      FUNC1 (fgrps[dp->bytemode1][rm], sizeflag);

      /* Instruction fnstsw is only one with strange arg.  */
      if (floatop == 0xdf && codep[-1] == 0xe0)
	FUNC2 (op1out, names16[0]);
    }
  else
    {
      FUNC1 (dp->name, sizeflag);

      obufp = op1out;
      if (dp->op1)
	(*dp->op1) (dp->bytemode1, sizeflag);
      obufp = op2out;
      if (dp->op2)
	(*dp->op2) (dp->bytemode2, sizeflag);
    }
}