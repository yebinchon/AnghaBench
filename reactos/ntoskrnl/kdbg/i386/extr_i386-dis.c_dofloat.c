
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dis386 {size_t bytemode1; int bytemode2; int (* op2 ) (int ,int) ;int (* op1 ) (size_t,int) ;int * name; } ;


 int MODRM_CHECK ;
 int OP_E (int ,int) ;
 int* codep ;
 int *** fgrps ;
 int ** float_mem ;
 int * float_mem_mode ;
 struct dis386** float_reg ;
 int mod ;
 int * names16 ;
 int obufp ;
 int op1out ;
 int op2out ;
 int putop (int *,int) ;
 unsigned char reg ;
 size_t rm ;
 int strcpy (int ,int ) ;
 int stub1 (size_t,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static void
dofloat (int sizeflag)
{
  const struct dis386 *dp;
  unsigned char floatop;

  floatop = codep[-1];

  if (mod != 3)
    {
      int fp_indx = (floatop - 0xd8) * 8 + reg;

      putop (float_mem[fp_indx], sizeflag);
      obufp = op1out;
      OP_E (float_mem_mode[fp_indx], sizeflag);
      return;
    }

  MODRM_CHECK;
  codep++;

  dp = &float_reg[floatop - 0xd8][reg];
  if (dp->name == ((void*)0))
    {
      putop (fgrps[dp->bytemode1][rm], sizeflag);


      if (floatop == 0xdf && codep[-1] == 0xe0)
 strcpy (op1out, names16[0]);
    }
  else
    {
      putop (dp->name, sizeflag);

      obufp = op1out;
      if (dp->op1)
 (*dp->op1) (dp->bytemode1, sizeflag);
      obufp = op2out;
      if (dp->op2)
 (*dp->op2) (dp->bytemode2, sizeflag);
    }
}
